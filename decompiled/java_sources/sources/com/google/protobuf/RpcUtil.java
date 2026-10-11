package com.google.protobuf;

/* loaded from: classes6.dex */
public final class RpcUtil {

    /* loaded from: classes6.dex */
    public static final class AlreadyCalledException extends RuntimeException {
        private static final long serialVersionUID = 5469741279507848266L;

        public AlreadyCalledException() {
            super("This RpcCallback was already called and cannot be called multiple times.");
        }
    }

    /* renamed from: com.google.protobuf.RpcUtil$a */
    /* loaded from: classes6.dex */
    public class C6818a implements RpcCallback<Message> {

        /* renamed from: a */
        public final /* synthetic */ Class f37791a;

        /* renamed from: b */
        public final /* synthetic */ Message f37792b;

        /* renamed from: c */
        public final /* synthetic */ RpcCallback f37793c;

        public C6818a(final Class val$originalClass, final Message val$defaultInstance, final RpcCallback val$originalCallback) {
            this.f37791a = val$originalClass;
            this.f37792b = val$defaultInstance;
            this.f37793c = val$originalCallback;
        }

        @Override // com.google.protobuf.RpcCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void run(final Message parameter) {
            Message m29478b;
            try {
                m29478b = (Message) this.f37791a.cast(parameter);
            } catch (ClassCastException unused) {
                m29478b = RpcUtil.m29478b(this.f37792b, parameter);
            }
            this.f37793c.run(m29478b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [ParameterType] */
    /* renamed from: com.google.protobuf.RpcUtil$b */
    /* loaded from: classes6.dex */
    public class C6819b<ParameterType> implements RpcCallback<ParameterType> {

        /* renamed from: a */
        public boolean f37794a = false;

        /* renamed from: b */
        public final /* synthetic */ RpcCallback f37795b;

        public C6819b(final RpcCallback val$originalCallback) {
            this.f37795b = val$originalCallback;
        }

        @Override // com.google.protobuf.RpcCallback
        public void run(final ParameterType parameter) {
            synchronized (this) {
                if (this.f37794a) {
                    throw new AlreadyCalledException();
                }
                this.f37794a = true;
            }
            this.f37795b.run(parameter);
        }
    }

    /* renamed from: b */
    public static <Type extends Message> Type m29478b(Type type, Message message) {
        return (Type) type.newBuilderForType().mergeFrom(message).build();
    }

    public static <Type extends Message> RpcCallback<Message> generalizeCallback(final RpcCallback<Type> originalCallback, final Class<Type> originalClass, final Type defaultInstance) {
        return new C6818a(originalClass, defaultInstance, originalCallback);
    }

    public static <ParameterType> RpcCallback<ParameterType> newOneTimeCallback(final RpcCallback<ParameterType> originalCallback) {
        return new C6819b(originalCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <Type extends Message> RpcCallback<Type> specializeCallback(final RpcCallback<Message> originalCallback) {
        return originalCallback;
    }
}
