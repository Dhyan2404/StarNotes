package org.apache.logging.log4j.util;

import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.MessageFactory;

/* loaded from: classes12.dex */
public final class LambdaUtil {
    public static Object get(final Supplier<?> supplier) {
        if (supplier == null) {
            return null;
        }
        Object obj = supplier.get();
        return obj instanceof Message ? ((Message) obj).getFormattedMessage() : obj;
    }

    public static Object[] getAll(final Supplier<?>... suppliers) {
        if (suppliers == null) {
            return null;
        }
        int length = suppliers.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr[i] = get(suppliers[i]);
        }
        return objArr;
    }

    public static Message getMessage(final Supplier<?> supplier, final MessageFactory messageFactory) {
        if (supplier == null) {
            return null;
        }
        Object obj = supplier.get();
        return obj instanceof Message ? (Message) obj : messageFactory.newMessage(obj);
    }

    public static Message get(final MessageSupplier supplier) {
        if (supplier == null) {
            return null;
        }
        return supplier.get();
    }
}
