package org.apache.logging.log4j.message;

import com.sunia.HTREnginev2.yud;
import java.io.Serializable;
import org.apache.logging.log4j.util.PerformanceSensitive;

@PerformanceSensitive({"allocation"})
/* loaded from: classes12.dex */
public final class ReusableMessageFactory implements MessageFactory2, Serializable {
    private static final long serialVersionUID = -8970940216592525651L;
    public static final ReusableMessageFactory INSTANCE = new ReusableMessageFactory();
    private static ThreadLocal<ReusableParameterizedMessage> threadLocalParameterized = new ThreadLocal<>();
    private static ThreadLocal<ReusableSimpleMessage> threadLocalSimpleMessage = new ThreadLocal<>();
    private static ThreadLocal<ReusableObjectMessage> threadLocalObjectMessage = new ThreadLocal<>();

    private static ReusableObjectMessage getObject() {
        ReusableObjectMessage reusableObjectMessage = threadLocalObjectMessage.get();
        if (reusableObjectMessage != null) {
            return reusableObjectMessage;
        }
        ReusableObjectMessage reusableObjectMessage2 = new ReusableObjectMessage();
        threadLocalObjectMessage.set(reusableObjectMessage2);
        return reusableObjectMessage2;
    }

    private static ReusableParameterizedMessage getParameterized() {
        ReusableParameterizedMessage reusableParameterizedMessage = threadLocalParameterized.get();
        if (reusableParameterizedMessage == null) {
            reusableParameterizedMessage = new ReusableParameterizedMessage();
            threadLocalParameterized.set(reusableParameterizedMessage);
        }
        if (reusableParameterizedMessage.reserved) {
            reusableParameterizedMessage = new ReusableParameterizedMessage();
        }
        return reusableParameterizedMessage.reserve();
    }

    private static ReusableSimpleMessage getSimple() {
        ReusableSimpleMessage reusableSimpleMessage = threadLocalSimpleMessage.get();
        if (reusableSimpleMessage != null) {
            return reusableSimpleMessage;
        }
        ReusableSimpleMessage reusableSimpleMessage2 = new ReusableSimpleMessage();
        threadLocalSimpleMessage.set(reusableSimpleMessage2);
        return reusableSimpleMessage2;
    }

    public static void release(final Message message) {
        if (message instanceof yud) {
            ((yud) message).clear();
        }
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final CharSequence charSequence) {
        ReusableSimpleMessage simple = getSimple();
        simple.set(charSequence);
        return simple;
    }

    @Override // org.apache.logging.log4j.message.MessageFactory
    public Message newMessage(final String message, final Object... params) {
        return getParameterized().set(message, params);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0) {
        return getParameterized().set(message, p0);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1) {
        return getParameterized().set(message, p0, p1);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1, final Object p2) {
        return getParameterized().set(message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        return getParameterized().set(message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        return getParameterized().set(message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        return getParameterized().set(message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        return getParameterized().set(message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        return getParameterized().set(message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        return getParameterized().set(message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory2
    public Message newMessage(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        return getParameterized().set(message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.message.MessageFactory
    public Message newMessage(final String message) {
        ReusableSimpleMessage simple = getSimple();
        simple.set(message);
        return simple;
    }

    @Override // org.apache.logging.log4j.message.MessageFactory
    public Message newMessage(final Object message) {
        ReusableObjectMessage object = getObject();
        object.set(message);
        return object;
    }
}
