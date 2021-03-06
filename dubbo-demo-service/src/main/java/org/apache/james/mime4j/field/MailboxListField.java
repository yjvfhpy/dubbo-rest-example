/****************************************************************
 * Licensed to the Apache Software Foundation (ASF) under one   *
 * or more contributor license agreements.  See the NOTICE file *
 * distributed with this work for additional information        *
 * regarding copyright ownership.  The ASF licenses this file   *
 * to you under the Apache License, Version 2.0 (the            *
 * "License"); you may not use this file except in compliance   *
 * with the License.  You may obtain a copy of the License at   *
 *                                                              *
 *   http://www.apache.org/licenses/LICENSE-2.0                 *
 *                                                              *
 * Unless required by applicable law or agreed to in writing,   *
 * software distributed under the License is distributed on an  *
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY       *
 * KIND, either express or implied.  See the License for the    *
 * specific language governing permissions and limitations      *
 * under the License.                                           *
 ****************************************************************/

package org.apache.james.mime4j.field;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.james.mime4j.field.address.AddressList;
import org.apache.james.mime4j.field.address.MailboxList;
import org.apache.james.mime4j.field.address.parser.ParseException;
import org.apache.james.mime4j.util.ByteSequence;

/**
 * Mailbox-list field such as <code>From</code> or <code>Resent-From</code>.
 */
public class MailboxListField extends AbstractField {
    private static Log log = LogFactory.getLog(MailboxListField.class);

    private boolean parsed = false;

    private MailboxList mailboxList;
    private ParseException parseException;

    MailboxListField(final String name, final String body, final ByteSequence raw) {
        super(name, body, raw);
    }

    public MailboxList getMailboxList() {
        if (!parsed)
            parse();

        return mailboxList;
    }

    @Override
    public ParseException getParseException() {
        if (!parsed)
            parse();

        return parseException;
    }

    private void parse() {
        String body = getBody();

        try {
            mailboxList = AddressList.parse(body).flatten();
        } catch (ParseException e) {
            if (log.isDebugEnabled()) {
                log.debug("Parsing value '" + body + "': " + e.getMessage());
            }
            parseException = e;
        }

        parsed = true;
    }

    static final FieldParser PARSER = new FieldParser() {
        public ParsedField parse(final String name, final String body,
                final ByteSequence raw) {
            return new MailboxListField(name, body, raw);
        }
    };
}
