package com.google.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.C6855b;
import com.google.protobuf.FieldSet;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite.Builder;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat;
import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.dun;
import com.sunia.HTREnginev2.ucl;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes6.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite<MessageType, BuilderType> {

    /* renamed from: f */
    public static final int f37570f = Integer.MAX_VALUE;

    /* renamed from: g */
    public static final int f37571g = Integer.MIN_VALUE;

    /* renamed from: h */
    public static final int f37572h = Integer.MAX_VALUE;

    /* renamed from: i */
    public static final int f37573i = 0;

    /* renamed from: j */
    public static Map<Object, GeneratedMessageLite<?, ?>> f37574j = new ConcurrentHashMap();

    /* renamed from: e */
    public int f37575e = -1;
    protected UnknownFieldSetLite unknownFields = UnknownFieldSetLite.getDefaultInstance();

    /* loaded from: classes6.dex */
    public static abstract class Builder<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite.Builder<MessageType, BuilderType> {

        /* renamed from: e */
        public final MessageType f37576e;
        protected MessageType instance;

        public Builder(MessageType defaultInstance) {
            this.f37576e = defaultInstance;
            if (defaultInstance.m29255o()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.instance = m29260d();
        }

        /* renamed from: c */
        public static <MessageType> void m29259c(MessageType dest, MessageType src) {
            d9l.m53616a().m53625j(dest).mo30366a(dest, src);
        }

        /* renamed from: d */
        private MessageType m29260d() {
            return (MessageType) this.f37576e.m29257q();
        }

        public final void copyOnWrite() {
            if (this.instance.m29255o()) {
                return;
            }
            copyOnWriteInternal();
        }

        public void copyOnWriteInternal() {
            MessageType m29260d = m29260d();
            m29259c(m29260d, this.instance);
            this.instance = m29260d;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return GeneratedMessageLite.isInitialized(this.instance, false);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final MessageType build() {
            MessageType buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessageLite.Builder.newUninitializedMessageException(buildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public MessageType buildPartial() {
            if (!this.instance.m29255o()) {
                return this.instance;
            }
            this.instance.makeImmutable();
            return this.instance;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final BuilderType clear() {
            if (!this.f37576e.m29255o()) {
                this.instance = m29260d();
                return this;
            }
            throw new IllegalArgumentException("Default instance must be immutable.");
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MessageType getDefaultInstanceForType() {
            return this.f37576e;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Builder
        public BuilderType internalMergeFrom(MessageType message) {
            return mergeFrom((Builder<MessageType, BuilderType>) message);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public BuilderType mo72165clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.instance = buildPartial();
            return buildertype;
        }

        public BuilderType mergeFrom(MessageType message) {
            if (getDefaultInstanceForType().equals(message)) {
                return this;
            }
            copyOnWrite();
            m29259c(this.instance, message);
            return this;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] input, int offset, int length, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            copyOnWrite();
            try {
                d9l.m53616a().m53625j(this.instance).mo30373f(this.instance, input, offset, offset + length, new C6855b.b(extensionRegistry));
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] input, int offset, int length) throws InvalidProtocolBufferException {
            return mergeFrom(input, offset, length, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            copyOnWrite();
            try {
                d9l.m53616a().m53625j(this.instance).mo30379i(this.instance, C6869f.m30203U(input), extensionRegistry);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class ExtendableBuilder<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends Builder<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        public ExtendableBuilder(MessageType defaultInstance) {
            super(defaultInstance);
        }

        public final <Type> BuilderType addExtension(final ExtensionLite<MessageType, List<Type>> extension, final Type value) {
            GeneratedExtension<MessageType, ?> m29240e = GeneratedMessageLite.m29240e(extension);
            m29263g(m29240e);
            copyOnWrite();
            m29261e().m29151h(m29240e.f37585d, m29240e.m29272d(value));
            return this;
        }

        public final BuilderType clearExtension(final ExtensionLite<MessageType, ?> extension) {
            GeneratedExtension<MessageType, ?> m29240e = GeneratedMessageLite.m29240e(extension);
            m29263g(m29240e);
            copyOnWrite();
            m29261e().m29153j(m29240e.f37585d);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Builder
        public void copyOnWriteInternal() {
            super.copyOnWriteInternal();
            if (((ExtendableMessage) this.instance).extensions != FieldSet.m29136s()) {
                MessageType messagetype = this.instance;
                ((ExtendableMessage) messagetype).extensions = ((ExtendableMessage) messagetype).extensions.clone();
            }
        }

        /* renamed from: e */
        public final FieldSet<C6763b> m29261e() {
            FieldSet<C6763b> fieldSet = ((ExtendableMessage) this.instance).extensions;
            if (!fieldSet.m29139D()) {
                return fieldSet;
            }
            FieldSet<C6763b> clone = fieldSet.clone();
            ((ExtendableMessage) this.instance).extensions = clone;
            return clone;
        }

        /* renamed from: f */
        public void m29262f(FieldSet<C6763b> extensions) {
            copyOnWrite();
            ((ExtendableMessage) this.instance).extensions = extensions;
        }

        /* renamed from: g */
        public final void m29263g(final GeneratedExtension<MessageType, ?> extension) {
            if (extension.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, Type> extensionLite) {
            return (Type) ((ExtendableMessage) this.instance).getExtension(extensionLite);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(final ExtensionLite<MessageType, List<Type>> extension) {
            return ((ExtendableMessage) this.instance).getExtensionCount(extension);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(final ExtensionLite<MessageType, Type> extension) {
            return ((ExtendableMessage) this.instance).hasExtension(extension);
        }

        public final <Type> BuilderType setExtension(final ExtensionLite<MessageType, Type> extension, final Type value) {
            GeneratedExtension<MessageType, ?> m29240e = GeneratedMessageLite.m29240e(extension);
            m29263g(m29240e);
            copyOnWrite();
            m29261e().m29145P(m29240e.f37585d, m29240e.m29273e(value));
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extensionLite, int i) {
            return (Type) ((ExtendableMessage) this.instance).getExtension(extensionLite, i);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public final MessageType buildPartial() {
            if (!((ExtendableMessage) this.instance).m29255o()) {
                return (MessageType) this.instance;
            }
            ((ExtendableMessage) this.instance).extensions.m29142J();
            return (MessageType) super.buildPartial();
        }

        public final <Type> BuilderType setExtension(final ExtensionLite<MessageType, List<Type>> extension, final int index, final Type value) {
            GeneratedExtension<MessageType, ?> m29240e = GeneratedMessageLite.m29240e(extension);
            m29263g(m29240e);
            copyOnWrite();
            m29261e().m29146Q(m29240e.f37585d, index, m29240e.m29272d(value));
            return this;
        }
    }

    /* loaded from: classes6.dex */
    public interface ExtendableMessageOrBuilder<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends MessageLiteOrBuilder {
        <Type> Type getExtension(ExtensionLite<MessageType, Type> extension);

        <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extension, int index);

        <Type> int getExtensionCount(ExtensionLite<MessageType, List<Type>> extension);

        <Type> boolean hasExtension(ExtensionLite<MessageType, Type> extension);
    }

    /* loaded from: classes6.dex */
    public static class GeneratedExtension<ContainingType extends MessageLite, Type> extends ExtensionLite<ContainingType, Type> {

        /* renamed from: a */
        public final ContainingType f37582a;

        /* renamed from: b */
        public final Type f37583b;

        /* renamed from: c */
        public final MessageLite f37584c;

        /* renamed from: d */
        public final C6763b f37585d;

        public GeneratedExtension(final ContainingType containingTypeDefaultInstance, final Type defaultValue, final MessageLite messageDefaultInstance, final C6763b descriptor, final Class singularType) {
            if (containingTypeDefaultInstance == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (descriptor.getLiteType() == WireFormat.FieldType.MESSAGE && messageDefaultInstance == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.f37582a = containingTypeDefaultInstance;
            this.f37583b = defaultValue;
            this.f37584c = messageDefaultInstance;
            this.f37585d = descriptor;
        }

        /* renamed from: b */
        public Object m29270b(Object value) {
            if (!this.f37585d.isRepeated()) {
                return m29271c(value);
            }
            if (this.f37585d.getLiteJavaType() != WireFormat.JavaType.ENUM) {
                return value;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = ((List) value).iterator();
            while (it2.hasNext()) {
                arrayList.add(m29271c(it2.next()));
            }
            return arrayList;
        }

        /* renamed from: c */
        public Object m29271c(Object value) {
            return this.f37585d.getLiteJavaType() == WireFormat.JavaType.ENUM ? this.f37585d.f37587e.findValueByNumber(((Integer) value).intValue()) : value;
        }

        /* renamed from: d */
        public Object m29272d(Object value) {
            return this.f37585d.getLiteJavaType() == WireFormat.JavaType.ENUM ? Integer.valueOf(((Internal.EnumLite) value).getNumber()) : value;
        }

        /* renamed from: e */
        public Object m29273e(Object value) {
            if (!this.f37585d.isRepeated()) {
                return m29272d(value);
            }
            if (this.f37585d.getLiteJavaType() != WireFormat.JavaType.ENUM) {
                return value;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = ((List) value).iterator();
            while (it2.hasNext()) {
                arrayList.add(m29272d(it2.next()));
            }
            return arrayList;
        }

        public ContainingType getContainingTypeDefaultInstance() {
            return this.f37582a;
        }

        @Override // com.google.protobuf.ExtensionLite
        public Type getDefaultValue() {
            return this.f37583b;
        }

        @Override // com.google.protobuf.ExtensionLite
        public WireFormat.FieldType getLiteType() {
            return this.f37585d.getLiteType();
        }

        @Override // com.google.protobuf.ExtensionLite
        public MessageLite getMessageDefaultInstance() {
            return this.f37584c;
        }

        @Override // com.google.protobuf.ExtensionLite
        public int getNumber() {
            return this.f37585d.getNumber();
        }

        @Override // com.google.protobuf.ExtensionLite
        public boolean isRepeated() {
            return this.f37585d.f37590h;
        }
    }

    /* loaded from: classes6.dex */
    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* loaded from: classes6.dex */
    public static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final byte[] asBytes;
        private final Class<?> messageClass;
        private final String messageClassName;

        public SerializedForm(MessageLite regularForm) {
            this.messageClass = regularForm.getClass();
            this.messageClassName = regularForm.getClass().getName();
            this.asBytes = regularForm.toByteArray();
        }

        /* renamed from: of */
        public static SerializedForm m29274of(MessageLite message) {
            return new SerializedForm(message);
        }

        @Deprecated
        private Object readResolveFallback() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = resolveMessageClass().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e) {
                throw new RuntimeException("Unable to understand proto buffer", e);
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Unable to call parsePartialFrom", e3);
            } catch (NoSuchFieldException e4) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.messageClassName, e4);
            } catch (SecurityException e5) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.messageClassName, e5);
            }
        }

        private Class<?> resolveMessageClass() throws ClassNotFoundException {
            Class<?> cls = this.messageClass;
            return cls != null ? cls : Class.forName(this.messageClassName);
        }

        public Object readResolve() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = resolveMessageClass().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e) {
                throw new RuntimeException("Unable to understand proto buffer", e);
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Unable to call parsePartialFrom", e3);
            } catch (NoSuchFieldException unused) {
                return this.readResolveFallback();
            } catch (SecurityException e4) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.messageClassName, e4);
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6762a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37586a;

        static {
            int[] iArr = new int[WireFormat.JavaType.values().length];
            f37586a = iArr;
            try {
                iArr[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37586a[WireFormat.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$b */
    /* loaded from: classes6.dex */
    public static final class C6763b implements FieldSet.FieldDescriptorLite<C6763b> {

        /* renamed from: e */
        public final Internal.EnumLiteMap<?> f37587e;

        /* renamed from: f */
        public final int f37588f;

        /* renamed from: g */
        public final WireFormat.FieldType f37589g;

        /* renamed from: h */
        public final boolean f37590h;

        /* renamed from: i */
        public final boolean f37591i;

        public C6763b(final Internal.EnumLiteMap<?> enumTypeMap, final int number, final WireFormat.FieldType type, final boolean isRepeated, final boolean isPacked) {
            this.f37587e = enumTypeMap;
            this.f37588f = number;
            this.f37589g = type;
            this.f37590h = isRepeated;
            this.f37591i = isPacked;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C6763b other) {
            return this.f37588f - other.f37588f;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public Internal.EnumLiteMap<?> getEnumType() {
            return this.f37587e;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public WireFormat.JavaType getLiteJavaType() {
            return this.f37589g.getJavaType();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public WireFormat.FieldType getLiteType() {
            return this.f37589g;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public int getNumber() {
            return this.f37588f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public MessageLite.Builder internalMergeFrom(MessageLite.Builder to, MessageLite from) {
            return ((Builder) to).mergeFrom((Builder) from);
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isPacked() {
            return this.f37591i;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isRepeated() {
            return this.f37590h;
        }
    }

    /* renamed from: e */
    public static <MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>, T> GeneratedExtension<MessageType, T> m29240e(ExtensionLite<MessageType, T> extension) {
        if (extension.mo29071a()) {
            return (GeneratedExtension) extension;
        }
        throw new IllegalArgumentException("Expected a lite extension.");
    }

    public static Internal.BooleanList emptyBooleanList() {
        return C6867e.m30178d();
    }

    public static Internal.DoubleList emptyDoubleList() {
        return C6872i.m30252d();
    }

    public static Internal.FloatList emptyFloatList() {
        return C6876m.m30273d();
    }

    public static Internal.IntList emptyIntList() {
        return C6877n.m30282d();
    }

    public static Internal.LongList emptyLongList() {
        return C6879p.m30299d();
    }

    public static <E> Internal.ProtobufList<E> emptyProtobufList() {
        return C6887x.m30413b();
    }

    /* renamed from: f */
    public static <T extends GeneratedMessageLite<T, ?>> T m29241f(T message) throws InvalidProtocolBufferException {
        if (message == null || message.isInitialized()) {
            return message;
        }
        throw message.newUninitializedMessageException().asInvalidProtocolBufferException().setUnfinishedMessage(message);
    }

    static java.lang.reflect.Method getMethodOrDie(Class clazz, String name, Class... params) {
        try {
            return clazz.getMethod(name, params);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Generated message class \"" + clazz.getName() + "\" missing method \"" + name + "\".", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object invokeOrDie(java.lang.reflect.Method method, Object object, Object... params) {
        try {
            return method.invoke(object, params);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* renamed from: l */
    public static <T extends GeneratedMessageLite<?, ?>> T m29242l(Class<T> cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = f37574j.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = f37574j.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (generatedMessageLite == null) {
            generatedMessageLite = (T) ((GeneratedMessageLite) dun.m53758l(cls)).getDefaultInstanceForType();
            if (generatedMessageLite == null) {
                throw new IllegalStateException();
            }
            f37574j.put(cls, generatedMessageLite);
        }
        return (T) generatedMessageLite;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$IntList] */
    public static Internal.IntList mutableCopy(Internal.IntList list) {
        int size = list.size();
        return list.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static Object newMessageInfo(MessageLite defaultInstance, String info, Object[] objects) {
        return new ucl(defaultInstance, info, objects);
    }

    public static <ContainingType extends MessageLite, Type> GeneratedExtension<ContainingType, Type> newRepeatedGeneratedExtension(final ContainingType containingTypeDefaultInstance, final MessageLite messageDefaultInstance, final Internal.EnumLiteMap<?> enumTypeMap, final int number, final WireFormat.FieldType type, final boolean isPacked, final Class singularType) {
        return new GeneratedExtension<>(containingTypeDefaultInstance, Collections.emptyList(), messageDefaultInstance, new C6763b(enumTypeMap, number, type, true, isPacked), singularType);
    }

    public static <ContainingType extends MessageLite, Type> GeneratedExtension<ContainingType, Type> newSingularGeneratedExtension(final ContainingType containingTypeDefaultInstance, final Type defaultValue, final MessageLite messageDefaultInstance, final Internal.EnumLiteMap<?> enumTypeMap, final int number, final WireFormat.FieldType type, final Class singularType) {
        return new GeneratedExtension<>(containingTypeDefaultInstance, defaultValue, messageDefaultInstance, new C6763b(enumTypeMap, number, type, false, false), singularType);
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseDelimitedFrom(T t, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) m29241f(m29243r(t, inputStream, ExtensionRegistryLite.getEmptyRegistry()));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) m29241f(parseFrom(t, CodedInputStream.newInstance(byteBuffer), extensionRegistryLite));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, CodedInputStream codedInputStream) throws InvalidProtocolBufferException {
        return (T) m29245t(t, codedInputStream, ExtensionRegistryLite.getEmptyRegistry());
    }

    /* renamed from: r */
    public static <T extends GeneratedMessageLite<T, ?>> T m29243r(T t, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            CodedInputStream newInstance = CodedInputStream.newInstance(new AbstractMessageLite.Builder.C6642a(inputStream, CodedInputStream.readRawVarint32(read, inputStream)));
            T t2 = (T) m29245t(t, newInstance, extensionRegistryLite);
            try {
                newInstance.checkLastTagWas(0);
                return t2;
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(t2);
            }
        } catch (InvalidProtocolBufferException e2) {
            if (e2.getThrownFromInputStream()) {
                throw new InvalidProtocolBufferException((IOException) e2);
            }
            throw e2;
        } catch (IOException e3) {
            throw new InvalidProtocolBufferException(e3);
        }
    }

    public static <T extends GeneratedMessageLite<?, ?>> void registerDefaultInstance(Class<T> clazz, T defaultInstance) {
        defaultInstance.m29256p();
        f37574j.put(clazz, defaultInstance);
    }

    /* renamed from: s */
    public static <T extends GeneratedMessageLite<T, ?>> T m29244s(T t, ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        CodedInputStream newCodedInput = byteString.newCodedInput();
        T t2 = (T) m29245t(t, newCodedInput, extensionRegistryLite);
        try {
            newCodedInput.checkLastTagWas(0);
            return t2;
        } catch (InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(t2);
        }
    }

    /* renamed from: t */
    public static <T extends GeneratedMessageLite<T, ?>> T m29245t(T t, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        T t2 = (T) t.m29257q();
        try {
            InterfaceC6889z m53625j = d9l.m53616a().m53625j(t2);
            m53625j.mo30379i(t2, C6869f.m30203U(codedInputStream), extensionRegistryLite);
            m53625j.mo30375g(t2);
            return t2;
        } catch (InvalidProtocolBufferException e) {
            e = e;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException((IOException) e);
            }
            throw e.setUnfinishedMessage(t2);
        } catch (UninitializedMessageException e2) {
            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(t2);
        } catch (IOException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(t2);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw e4;
        }
    }

    /* renamed from: u */
    public static <T extends GeneratedMessageLite<T, ?>> T m29246u(T t, byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        T t2 = (T) t.m29257q();
        try {
            InterfaceC6889z m53625j = d9l.m53616a().m53625j(t2);
            m53625j.mo30373f(t2, bArr, i, i + i2, new C6855b.b(extensionRegistryLite));
            m53625j.mo30375g(t2);
            return t2;
        } catch (InvalidProtocolBufferException e) {
            e = e;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException((IOException) e);
            }
            throw e.setUnfinishedMessage(t2);
        } catch (UninitializedMessageException e2) {
            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(t2);
        } catch (IOException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw InvalidProtocolBufferException.truncatedMessage().setUnfinishedMessage(t2);
        }
    }

    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> BuilderType createBuilder() {
        return (BuilderType) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    /* renamed from: d */
    public Object m29247d() throws Exception {
        return dynamicMethod(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    @bnd
    public Object dynamicMethod(MethodToInvoke method, Object arg0) {
        return dynamicMethod(method, arg0, null);
    }

    public abstract Object dynamicMethod(MethodToInvoke method, Object arg0, Object arg1);

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null && getClass() == other.getClass()) {
            return d9l.m53616a().m53625j(this).mo30368c(this, (GeneratedMessageLite) other);
        }
        return false;
    }

    /* renamed from: g */
    public void m29248g() {
        this.memoizedHashCode = 0;
    }

    @Override // com.google.protobuf.AbstractMessageLite
    public int getMemoizedSerializedSize() {
        return this.f37575e & Integer.MAX_VALUE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public final Parser<MessageType> getParserForType() {
        return (Parser) dynamicMethod(MethodToInvoke.GET_PARSER);
    }

    @Override // com.google.protobuf.AbstractMessageLite
    public int getSerializedSize(InterfaceC6889z schema) {
        if (m29255o()) {
            int m29251j = m29251j(schema);
            if (m29251j >= 0) {
                return m29251j;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + m29251j);
        }
        if (getMemoizedSerializedSize() != Integer.MAX_VALUE) {
            return getMemoizedSerializedSize();
        }
        int m29251j2 = m29251j(schema);
        setMemoizedSerializedSize(m29251j2);
        return m29251j2;
    }

    /* renamed from: h */
    public void m29249h() {
        setMemoizedSerializedSize(Integer.MAX_VALUE);
    }

    public int hashCode() {
        if (m29255o()) {
            return m29250i();
        }
        if (m29254n()) {
            m29258v(m29250i());
        }
        return m29253m();
    }

    /* renamed from: i */
    int m29250i() {
        return d9l.m53616a().m53625j(this).mo30369d(this);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    /* renamed from: j */
    public final int m29251j(InterfaceC6889z<?> nullableSchema) {
        return nullableSchema == null ? d9l.m53616a().m53625j(this).mo30377h(this) : nullableSchema.mo30377h(this);
    }

    /* renamed from: k */
    public final void m29252k() {
        if (this.unknownFields == UnknownFieldSetLite.getDefaultInstance()) {
            this.unknownFields = UnknownFieldSetLite.m29632k();
        }
    }

    /* renamed from: m */
    public int m29253m() {
        return this.memoizedHashCode;
    }

    public void makeImmutable() {
        d9l.m53616a().m53625j(this).mo30375g(this);
        m29256p();
    }

    public void mergeLengthDelimitedField(int fieldNumber, ByteString value) {
        m29252k();
        this.unknownFields.m29641h(fieldNumber, value);
    }

    public final void mergeUnknownFields(UnknownFieldSetLite unknownFields) {
        this.unknownFields = UnknownFieldSetLite.m29631j(this.unknownFields, unknownFields);
    }

    public void mergeVarintField(int tag, int value) {
        m29252k();
        this.unknownFields.m29642i(tag, value);
    }

    /* renamed from: n */
    public boolean m29254n() {
        return m29253m() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public boolean m29255o() {
        return (this.f37575e & Integer.MIN_VALUE) != 0;
    }

    /* renamed from: p */
    public void m29256p() {
        this.f37575e &= Integer.MAX_VALUE;
    }

    public boolean parseUnknownField(int tag, CodedInputStream input) throws IOException {
        if (WireFormat.getTagWireType(tag) == 4) {
            return false;
        }
        m29252k();
        return this.unknownFields.m29638e(tag, input);
    }

    /* renamed from: q */
    public MessageType m29257q() {
        return (MessageType) dynamicMethod(MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    @Override // com.google.protobuf.AbstractMessageLite
    public void setMemoizedSerializedSize(int size) {
        if (size >= 0) {
            this.f37575e = (size & Integer.MAX_VALUE) | (this.f37575e & Integer.MIN_VALUE);
        } else {
            throw new IllegalStateException("serialized size must be non-negative, was " + size);
        }
    }

    public String toString() {
        return C6883t.m30325f(this, super.toString());
    }

    /* renamed from: v */
    public void m29258v(int value) {
        this.memoizedHashCode = value;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        d9l.m53616a().m53625j(this).mo30371e(this, C6870g.m30214D(output));
    }

    public static final <T extends GeneratedMessageLite<T, ?>> boolean isInitialized(T message, boolean shouldMemoize) {
        byte byteValue = ((Byte) message.dynamicMethod(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean mo30367b = d9l.m53616a().m53625j(message).mo30367b(message);
        if (shouldMemoize) {
            message.dynamicMethod(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, mo30367b ? message : null);
        }
        return mo30367b;
    }

    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> BuilderType createBuilder(MessageType messagetype) {
        return (BuilderType) createBuilder().mergeFrom(messagetype);
    }

    public Object dynamicMethod(MethodToInvoke method) {
        return dynamicMethod(method, null, null);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) dynamicMethod(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public final BuilderType newBuilderForType() {
        return (BuilderType) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public final BuilderType toBuilder() {
        return (BuilderType) ((Builder) dynamicMethod(MethodToInvoke.NEW_BUILDER)).mergeFrom((Builder) this);
    }

    /* loaded from: classes6.dex */
    public static class DefaultInstanceBasedParser<T extends GeneratedMessageLite<T, ?>> extends AbstractParser<T> {

        /* renamed from: b */
        public final T f37577b;

        public DefaultInstanceBasedParser(T defaultInstance) {
            this.f37577b = defaultInstance;
        }

        @Override // com.google.protobuf.Parser
        public T parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (T) GeneratedMessageLite.m29245t(this.f37577b, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public T parsePartialFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (T) GeneratedMessageLite.m29246u(this.f37577b, bArr, i, i2, extensionRegistryLite);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$LongList] */
    public static Internal.LongList mutableCopy(Internal.LongList list) {
        int size = list.size();
        return list.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (T) parseFrom(t, byteBuffer, ExtensionRegistryLite.getEmptyRegistry());
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseDelimitedFrom(T t, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) m29241f(m29243r(t, inputStream, extensionRegistryLite));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteString byteString) throws InvalidProtocolBufferException {
        return (T) m29241f(parseFrom(t, byteString, ExtensionRegistryLite.getEmptyRegistry()));
    }

    /* loaded from: classes6.dex */
    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends GeneratedMessageLite<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        protected FieldSet<C6763b> extensions = FieldSet.m29136s();

        /* loaded from: classes6.dex */
        public class ExtensionWriter {

            /* renamed from: a */
            public final Iterator<Map.Entry<C6763b, Object>> f37578a;

            /* renamed from: b */
            public Map.Entry<C6763b, Object> f37579b;

            /* renamed from: c */
            public final boolean f37580c;

            public /* synthetic */ ExtensionWriter(ExtendableMessage extendableMessage, boolean z, C6762a c6762a) {
                this(z);
            }

            public void writeUntil(final int end, final CodedOutputStream output) throws IOException {
                while (true) {
                    Map.Entry<C6763b, Object> entry = this.f37579b;
                    if (entry == null || entry.getKey().getNumber() >= end) {
                        return;
                    }
                    C6763b key = this.f37579b.getKey();
                    if (this.f37580c && key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated()) {
                        output.writeMessageSetExtension(key.getNumber(), (MessageLite) this.f37579b.getValue());
                    } else {
                        FieldSet.m29122U(key, this.f37579b.getValue(), output);
                    }
                    if (this.f37578a.hasNext()) {
                        this.f37579b = this.f37578a.next();
                    } else {
                        this.f37579b = null;
                    }
                }
            }

            public ExtensionWriter(boolean messageSetWireFormat) {
                Iterator<Map.Entry<C6763b, Object>> m29141I = ExtendableMessage.this.extensions.m29141I();
                this.f37578a = m29141I;
                if (m29141I.hasNext()) {
                    this.f37579b = m29141I.next();
                }
                this.f37580c = messageSetWireFormat;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x003d  */
        /* renamed from: A */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m29264A(com.google.protobuf.CodedInputStream r6, com.google.protobuf.ExtensionRegistryLite r7, com.google.protobuf.GeneratedMessageLite.GeneratedExtension<?, ?> r8, int r9, int r10) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 293
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.GeneratedMessageLite.ExtendableMessage.m29264A(com.google.protobuf.CodedInputStream, com.google.protobuf.ExtensionRegistryLite, com.google.protobuf.GeneratedMessageLite$GeneratedExtension, int, int):boolean");
        }

        /* renamed from: B */
        public final void m29265B(final GeneratedExtension<MessageType, ?> extension) {
            if (extension.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public boolean extensionsAreInitialized() {
            return this.extensions.m29140E();
        }

        public int extensionsSerializedSize() {
            return this.extensions.m29162z();
        }

        public int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.m29158v();
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public /* bridge */ /* synthetic */ MessageLite getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, Type> extensionLite) {
            GeneratedExtension<MessageType, ?> m29240e = GeneratedMessageLite.m29240e(extensionLite);
            m29265B(m29240e);
            Object m29157u = this.extensions.m29157u(m29240e.f37585d);
            if (m29157u == null) {
                return m29240e.f37583b;
            }
            return (Type) m29240e.m29270b(m29157u);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(final ExtensionLite<MessageType, List<Type>> extension) {
            GeneratedExtension<MessageType, ?> m29240e = GeneratedMessageLite.m29240e(extension);
            m29265B(m29240e);
            return this.extensions.m29161y(m29240e.f37585d);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(final ExtensionLite<MessageType, Type> extension) {
            GeneratedExtension<MessageType, ?> m29240e = GeneratedMessageLite.m29240e(extension);
            m29265B(m29240e);
            return this.extensions.m29137B(m29240e.f37585d);
        }

        public final void mergeExtensionFields(final MessageType other) {
            if (this.extensions.m29139D()) {
                this.extensions = this.extensions.clone();
            }
            this.extensions.m29143K(other.extensions);
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public /* bridge */ /* synthetic */ MessageLite.Builder newBuilderForType() {
            return super.newBuilderForType();
        }

        public ExtendableMessage<MessageType, BuilderType>.ExtensionWriter newExtensionWriter() {
            return new ExtensionWriter(this, false, null);
        }

        public ExtendableMessage<MessageType, BuilderType>.ExtensionWriter newMessageSetExtensionWriter() {
            return new ExtensionWriter(this, true, null);
        }

        public <MessageType extends MessageLite> boolean parseUnknownField(MessageType defaultInstance, CodedInputStream input, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
            int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
            return m29264A(input, extensionRegistry, extensionRegistry.findLiteExtensionByNumber(defaultInstance, tagFieldNumber), tag, tagFieldNumber);
        }

        public <MessageType extends MessageLite> boolean parseUnknownFieldAsMessageSet(MessageType defaultInstance, CodedInputStream input, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
            if (tag != WireFormat.f37968k) {
                return WireFormat.getTagWireType(tag) == 2 ? parseUnknownField(defaultInstance, input, extensionRegistry, tag) : input.skipField(tag);
            }
            m29269z(defaultInstance, input, extensionRegistry);
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public /* bridge */ /* synthetic */ MessageLite.Builder toBuilder() {
            return super.toBuilder();
        }

        /* renamed from: w */
        public final void m29266w(CodedInputStream input, GeneratedExtension<?, ?> extension, ExtensionRegistryLite extensionRegistry, int typeId) throws IOException {
            m29264A(input, extensionRegistry, extension, WireFormat.m29722a(typeId, 2), typeId);
        }

        @bnd
        /* renamed from: x */
        public FieldSet<C6763b> m29267x() {
            if (this.extensions.m29139D()) {
                this.extensions = this.extensions.clone();
            }
            return this.extensions;
        }

        /* renamed from: y */
        public final void m29268y(ByteString rawBytes, ExtensionRegistryLite extensionRegistry, GeneratedExtension<?, ?> extension) throws IOException {
            MessageLite messageLite = (MessageLite) this.extensions.m29157u(extension.f37585d);
            MessageLite.Builder builder = messageLite != null ? messageLite.toBuilder() : null;
            if (builder == null) {
                builder = extension.getMessageDefaultInstance().newBuilderForType();
            }
            builder.mergeFrom(rawBytes, extensionRegistry);
            m29267x().m29145P(extension.f37585d, extension.m29272d(builder.build()));
        }

        /* renamed from: z */
        public final <MessageType extends MessageLite> void m29269z(MessageType defaultInstance, CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            int i = 0;
            ByteString byteString = null;
            GeneratedExtension<?, ?> generatedExtension = null;
            while (true) {
                int readTag = input.readTag();
                if (readTag == 0) {
                    break;
                }
                if (readTag == WireFormat.f37970m) {
                    i = input.readUInt32();
                    if (i != 0) {
                        generatedExtension = extensionRegistry.findLiteExtensionByNumber(defaultInstance, i);
                    }
                } else if (readTag == WireFormat.f37971n) {
                    if (i == 0 || generatedExtension == null) {
                        byteString = input.readBytes();
                    } else {
                        m29266w(input, generatedExtension, extensionRegistry, i);
                        byteString = null;
                    }
                } else if (!input.skipField(readTag)) {
                    break;
                }
            }
            input.checkLastTagWas(WireFormat.f37969l);
            if (byteString == null || i == 0) {
                return;
            }
            if (generatedExtension != null) {
                m29268y(byteString, extensionRegistry, generatedExtension);
            } else {
                mergeLengthDelimitedField(i, byteString);
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extensionLite, int i) {
            GeneratedExtension<MessageType, ?> m29240e = GeneratedMessageLite.m29240e(extensionLite);
            m29265B(m29240e);
            return (Type) m29240e.m29271c(this.extensions.m29160x(m29240e.f37585d, i));
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$FloatList] */
    public static Internal.FloatList mutableCopy(Internal.FloatList list) {
        int size = list.size();
        return list.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) m29241f(m29244s(t, byteString, extensionRegistryLite));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$DoubleList] */
    public static Internal.DoubleList mutableCopy(Internal.DoubleList list) {
        int size = list.size();
        return list.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, byte[] bArr) throws InvalidProtocolBufferException {
        return (T) m29241f(m29246u(t, bArr, 0, bArr.length, ExtensionRegistryLite.getEmptyRegistry()));
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        return getSerializedSize(null);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$BooleanList] */
    public static Internal.BooleanList mutableCopy(Internal.BooleanList list) {
        int size = list.size();
        return list.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) m29241f(m29246u(t, bArr, 0, bArr.length, extensionRegistryLite));
    }

    public static <E> Internal.ProtobufList<E> mutableCopy(Internal.ProtobufList<E> list) {
        int size = list.size();
        return list.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) m29241f(m29245t(t, CodedInputStream.newInstance(inputStream), ExtensionRegistryLite.getEmptyRegistry()));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) m29241f(m29245t(t, CodedInputStream.newInstance(inputStream), extensionRegistryLite));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, CodedInputStream codedInputStream) throws InvalidProtocolBufferException {
        return (T) parseFrom(t, codedInputStream, ExtensionRegistryLite.getEmptyRegistry());
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (T) m29241f(m29245t(t, codedInputStream, extensionRegistryLite));
    }
}
