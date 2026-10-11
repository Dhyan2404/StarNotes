package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Extension;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.LazyField;
import com.google.protobuf.Message;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.WireFormat;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes6.dex */
public abstract class GeneratedMessage extends AbstractMessage implements Serializable {
    protected static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    protected UnknownFieldSet unknownFields;

    /* loaded from: classes6.dex */
    public static abstract class Builder<BuilderType extends Builder<BuilderType>> extends AbstractMessage.Builder<BuilderType> {

        /* renamed from: e */
        public BuilderParent f37486e;

        /* renamed from: f */
        public Builder<BuilderType>.C6743a f37487f;

        /* renamed from: g */
        public boolean f37488g;

        /* renamed from: h */
        public UnknownFieldSet f37489h;

        /* renamed from: com.google.protobuf.GeneratedMessage$Builder$a */
        /* loaded from: classes6.dex */
        public class C6743a implements BuilderParent {
            public C6743a() {
            }

            @Override // com.google.protobuf.AbstractMessage.BuilderParent
            public void markDirty() {
                Builder.this.onChanged();
            }

            public /* synthetic */ C6743a(Builder builder, C6755a c6755a) {
                this();
            }
        }

        public Builder() {
            this(null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.AbstractMessage.Builder
        /* renamed from: c */
        public void mo28602c() {
            this.f37486e = null;
        }

        /* renamed from: f */
        public final Map<Descriptors.FieldDescriptor, Object> m29192f() {
            TreeMap treeMap = new TreeMap();
            List<Descriptors.FieldDescriptor> fields = internalGetFieldAccessorTable().f37496a.getFields();
            int i = 0;
            while (i < fields.size()) {
                Descriptors.FieldDescriptor fieldDescriptor = fields.get(i);
                Descriptors.OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
                if (containingOneof != null) {
                    i += containingOneof.getFieldCount() - 1;
                    if (hasOneof(containingOneof)) {
                        fieldDescriptor = getOneofFieldDescriptor(containingOneof);
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                        i++;
                    } else {
                        i++;
                    }
                } else {
                    if (fieldDescriptor.isRepeated()) {
                        List list = (List) getField(fieldDescriptor);
                        if (!list.isEmpty()) {
                            treeMap.put(fieldDescriptor, list);
                        }
                    } else {
                        if (!hasField(fieldDescriptor)) {
                        }
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                    }
                    i++;
                }
            }
            return treeMap;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            return Collections.unmodifiableMap(m29192f());
        }

        @Override // com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return internalGetFieldAccessorTable().f37496a;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getField(final Descriptors.FieldDescriptor field) {
            Object mo29220n = internalGetFieldAccessorTable().m29204e(field).mo29220n(this);
            return field.isRepeated() ? Collections.unmodifiableList((List) mo29220n) : mo29220n;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(final Descriptors.FieldDescriptor field) {
            return internalGetFieldAccessorTable().m29204e(field).mo29224r(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(final Descriptors.OneofDescriptor oneof) {
            return internalGetFieldAccessorTable().m29205f(oneof).m29229b(this);
        }

        public BuilderParent getParentForChildren() {
            if (this.f37487f == null) {
                this.f37487f = new C6743a(this, null);
            }
            return this.f37487f;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(final Descriptors.FieldDescriptor field, final int index) {
            return internalGetFieldAccessorTable().m29204e(field).mo29221o(this, index);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(final Descriptors.FieldDescriptor field, int index) {
            return internalGetFieldAccessorTable().m29204e(field).mo29213g(this, index);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(final Descriptors.FieldDescriptor field) {
            return internalGetFieldAccessorTable().m29204e(field).mo29209c(this);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.f37489h;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public boolean hasField(final Descriptors.FieldDescriptor field) {
            return internalGetFieldAccessorTable().m29204e(field).mo29218l(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageOrBuilder
        public boolean hasOneof(final Descriptors.OneofDescriptor oneof) {
            return internalGetFieldAccessorTable().m29205f(oneof).m29231d(this);
        }

        public abstract FieldAccessorTable internalGetFieldAccessorTable();

        public MapField internalGetMapField(int fieldNumber) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        public MapField internalGetMutableMapField(int fieldNumber) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        public boolean isClean() {
            return this.f37488g;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            for (Descriptors.FieldDescriptor fieldDescriptor : getDescriptorForType().getFields()) {
                if (fieldDescriptor.isRequired() && !hasField(fieldDescriptor)) {
                    return false;
                }
                if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    if (fieldDescriptor.isRepeated()) {
                        Iterator it2 = ((List) getField(fieldDescriptor)).iterator();
                        while (it2.hasNext()) {
                            if (!((Message) it2.next()).isInitialized()) {
                                return false;
                            }
                        }
                    } else if (hasField(fieldDescriptor) && !((Message) getField(fieldDescriptor)).isInitialized()) {
                        return false;
                    }
                }
            }
            return true;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder
        public void markClean() {
            this.f37488g = true;
        }

        @Override // com.google.protobuf.Message.Builder
        public Message.Builder newBuilderForField(final Descriptors.FieldDescriptor field) {
            return internalGetFieldAccessorTable().m29204e(field).newBuilder();
        }

        public void onBuilt() {
            if (this.f37486e != null) {
                markClean();
            }
        }

        public final void onChanged() {
            BuilderParent builderParent;
            if (!this.f37488g || (builderParent = this.f37486e) == null) {
                return;
            }
            builderParent.markDirty();
            this.f37488g = false;
        }

        public boolean parseUnknownField(final CodedInputStream input, final UnknownFieldSet.Builder unknownFields, final ExtensionRegistryLite extensionRegistry, final int tag) throws IOException {
            return unknownFields.mergeFieldFrom(tag, input);
        }

        public Builder(BuilderParent builderParent) {
            this.f37489h = UnknownFieldSet.getDefaultInstance();
            this.f37486e = builderParent;
        }

        @Override // com.google.protobuf.Message.Builder
        public BuilderType addRepeatedField(final Descriptors.FieldDescriptor field, final Object value) {
            internalGetFieldAccessorTable().m29204e(field).mo29222p(this, value);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public BuilderType clearField(final Descriptors.FieldDescriptor field) {
            internalGetFieldAccessorTable().m29204e(field).mo29216j(this);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public BuilderType setField(final Descriptors.FieldDescriptor field, final Object value) {
            internalGetFieldAccessorTable().m29204e(field).mo29207a(this, value);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public BuilderType setRepeatedField(final Descriptors.FieldDescriptor field, final int index, final Object value) {
            internalGetFieldAccessorTable().m29204e(field).mo29215i(this, index, value);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        public BuilderType setUnknownFields(final UnknownFieldSet unknownFields) {
            this.f37489h = unknownFields;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public BuilderType clearOneof(final Descriptors.OneofDescriptor oneof) {
            internalGetFieldAccessorTable().m29205f(oneof).m29228a(this);
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeUnknownFields(final UnknownFieldSet unknownFields) {
            this.f37489h = UnknownFieldSet.newBuilder(this.f37489h).mergeFrom(unknownFields).build();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType clear() {
            this.f37489h = UnknownFieldSet.getDefaultInstance();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public BuilderType mo72165clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.mergeFrom(buildPartial());
            return buildertype;
        }
    }

    /* loaded from: classes6.dex */
    public interface BuilderParent extends AbstractMessage.BuilderParent {
    }

    /* loaded from: classes6.dex */
    public interface ExtendableMessageOrBuilder<MessageType extends ExtendableMessage> extends MessageOrBuilder {
        @Override // com.google.protobuf.MessageOrBuilder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        Message getDefaultInstanceForType();

        <Type> Type getExtension(Extension<MessageType, Type> extension);

        <Type> Type getExtension(Extension<MessageType, List<Type>> extension, int index);

        <Type> Type getExtension(ExtensionLite<MessageType, Type> extension);

        <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extension, int index);

        <Type> Type getExtension(GeneratedExtension<MessageType, Type> extension);

        <Type> Type getExtension(GeneratedExtension<MessageType, List<Type>> extension, int index);

        <Type> int getExtensionCount(Extension<MessageType, List<Type>> extension);

        <Type> int getExtensionCount(ExtensionLite<MessageType, List<Type>> extension);

        <Type> int getExtensionCount(GeneratedExtension<MessageType, List<Type>> extension);

        <Type> boolean hasExtension(Extension<MessageType, Type> extension);

        <Type> boolean hasExtension(ExtensionLite<MessageType, Type> extension);

        <Type> boolean hasExtension(GeneratedExtension<MessageType, Type> extension);
    }

    /* loaded from: classes6.dex */
    public static class GeneratedExtension<ContainingType extends Message, Type> extends Extension<ContainingType, Type> {

        /* renamed from: a */
        public InterfaceC6761g f37551a;

        /* renamed from: b */
        public final Class f37552b;

        /* renamed from: c */
        public final Message f37553c;

        /* renamed from: d */
        public final java.lang.reflect.Method f37554d;

        /* renamed from: e */
        public final java.lang.reflect.Method f37555e;

        /* renamed from: f */
        public final Extension.ExtensionType f37556f;

        /* renamed from: com.google.protobuf.GeneratedMessage$GeneratedExtension$a */
        /* loaded from: classes6.dex */
        public class C6754a implements InterfaceC6761g {

            /* renamed from: a */
            public final /* synthetic */ Descriptors.FieldDescriptor f37557a;

            public C6754a(final Descriptors.FieldDescriptor val$descriptor) {
                this.f37557a = val$descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.InterfaceC6761g
            public Descriptors.FieldDescriptor getDescriptor() {
                return this.f37557a;
            }
        }

        public GeneratedExtension(InterfaceC6761g descriptorRetriever, Class singularType, Message messageDefaultInstance, Extension.ExtensionType extensionType) {
            if (Message.class.isAssignableFrom(singularType) && !singularType.isInstance(messageDefaultInstance)) {
                throw new IllegalArgumentException("Bad messageDefaultInstance for " + singularType.getName());
            }
            this.f37551a = descriptorRetriever;
            this.f37552b = singularType;
            this.f37553c = messageDefaultInstance;
            if (ProtocolMessageEnum.class.isAssignableFrom(singularType)) {
                this.f37554d = GeneratedMessage.getMethodOrDie(singularType, "valueOf", Descriptors.EnumValueDescriptor.class);
                this.f37555e = GeneratedMessage.getMethodOrDie(singularType, "getValueDescriptor", new Class[0]);
            } else {
                this.f37554d = null;
                this.f37555e = null;
            }
            this.f37556f = extensionType;
        }

        @Override // com.google.protobuf.Extension
        public Object fromReflectionType(final Object value) {
            Descriptors.FieldDescriptor descriptor = getDescriptor();
            if (!descriptor.isRepeated()) {
                return singularFromReflectionType(value);
            }
            if (descriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE && descriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.ENUM) {
                return value;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = ((List) value).iterator();
            while (it2.hasNext()) {
                arrayList.add(singularFromReflectionType(it2.next()));
            }
            return arrayList;
        }

        @Override // com.google.protobuf.ExtensionLite
        public Type getDefaultValue() {
            return isRepeated() ? (Type) Collections.emptyList() : getDescriptor().getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE ? (Type) this.f37553c : (Type) singularFromReflectionType(getDescriptor().getDefaultValue());
        }

        @Override // com.google.protobuf.Extension
        public Descriptors.FieldDescriptor getDescriptor() {
            InterfaceC6761g interfaceC6761g = this.f37551a;
            if (interfaceC6761g != null) {
                return interfaceC6761g.getDescriptor();
            }
            throw new IllegalStateException("getDescriptor() called before internalInit()");
        }

        @Override // com.google.protobuf.Extension
        public Extension.ExtensionType getExtensionType() {
            return this.f37556f;
        }

        @Override // com.google.protobuf.ExtensionLite
        public WireFormat.FieldType getLiteType() {
            return getDescriptor().getLiteType();
        }

        @Override // com.google.protobuf.ExtensionLite
        public int getNumber() {
            return getDescriptor().getNumber();
        }

        public void internalInit(final Descriptors.FieldDescriptor descriptor) {
            if (this.f37551a != null) {
                throw new IllegalStateException("Already initialized.");
            }
            this.f37551a = new C6754a(descriptor);
        }

        @Override // com.google.protobuf.ExtensionLite
        public boolean isRepeated() {
            return getDescriptor().isRepeated();
        }

        @Override // com.google.protobuf.Extension
        public Object singularFromReflectionType(final Object value) {
            int i = C6759e.f37568a[getDescriptor().getJavaType().ordinal()];
            return i != 1 ? i != 2 ? value : GeneratedMessage.invokeOrDie(this.f37554d, null, (Descriptors.EnumValueDescriptor) value) : this.f37552b.isInstance(value) ? value : this.f37553c.newBuilderForType().mergeFrom((Message) value).build();
        }

        @Override // com.google.protobuf.Extension
        public Object singularToReflectionType(final Object value) {
            return C6759e.f37568a[getDescriptor().getJavaType().ordinal()] != 2 ? value : GeneratedMessage.invokeOrDie(this.f37555e, value, new Object[0]);
        }

        @Override // com.google.protobuf.Extension
        public Object toReflectionType(final Object value) {
            Descriptors.FieldDescriptor descriptor = getDescriptor();
            if (!descriptor.isRepeated()) {
                return singularToReflectionType(value);
            }
            if (descriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.ENUM) {
                return value;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = ((List) value).iterator();
            while (it2.hasNext()) {
                arrayList.add(singularToReflectionType(it2.next()));
            }
            return arrayList;
        }

        @Override // com.google.protobuf.Extension, com.google.protobuf.ExtensionLite
        public Message getMessageDefaultInstance() {
            return this.f37553c;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$a */
    /* loaded from: classes6.dex */
    public class C6755a implements BuilderParent {

        /* renamed from: a */
        public final /* synthetic */ AbstractMessage.BuilderParent f37559a;

        public C6755a(final AbstractMessage.BuilderParent val$parent) {
            this.f37559a = val$parent;
        }

        @Override // com.google.protobuf.AbstractMessage.BuilderParent
        public void markDirty() {
            this.f37559a.markDirty();
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$b */
    /* loaded from: classes6.dex */
    public class C6756b extends AbstractC6760f {

        /* renamed from: b */
        public final /* synthetic */ Message f37561b;

        /* renamed from: c */
        public final /* synthetic */ int f37562c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6756b(final Message val$scope, final int val$descriptorIndex) {
            super(null);
            this.f37561b = val$scope;
            this.f37562c = val$descriptorIndex;
        }

        @Override // com.google.protobuf.GeneratedMessage.AbstractC6760f
        /* renamed from: a */
        public Descriptors.FieldDescriptor mo29237a() {
            return this.f37561b.getDescriptorForType().getExtensions().get(this.f37562c);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$c */
    /* loaded from: classes6.dex */
    public class C6757c extends AbstractC6760f {

        /* renamed from: b */
        public final /* synthetic */ Message f37563b;

        /* renamed from: c */
        public final /* synthetic */ String f37564c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6757c(final Message val$scope, final String val$name) {
            super(null);
            this.f37563b = val$scope;
            this.f37564c = val$name;
        }

        @Override // com.google.protobuf.GeneratedMessage.AbstractC6760f
        /* renamed from: a */
        public Descriptors.FieldDescriptor mo29237a() {
            return this.f37563b.getDescriptorForType().findFieldByName(this.f37564c);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$d */
    /* loaded from: classes6.dex */
    public class C6758d extends AbstractC6760f {

        /* renamed from: b */
        public final /* synthetic */ Class f37565b;

        /* renamed from: c */
        public final /* synthetic */ String f37566c;

        /* renamed from: d */
        public final /* synthetic */ String f37567d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6758d(final Class val$singularType, final String val$descriptorOuterClass, final String val$extensionName) {
            super(null);
            this.f37565b = val$singularType;
            this.f37566c = val$descriptorOuterClass;
            this.f37567d = val$extensionName;
        }

        @Override // com.google.protobuf.GeneratedMessage.AbstractC6760f
        /* renamed from: a */
        public Descriptors.FieldDescriptor mo29237a() {
            try {
                return ((Descriptors.FileDescriptor) this.f37565b.getClassLoader().loadClass(this.f37566c).getField("descriptor").get(null)).findExtensionByName(this.f37567d);
            } catch (Exception e) {
                throw new RuntimeException("Cannot load descriptors: " + this.f37566c + " is not a valid descriptor class name", e);
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$e */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6759e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37568a;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.JavaType.values().length];
            f37568a = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37568a[Descriptors.FieldDescriptor.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$f */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6760f implements InterfaceC6761g {

        /* renamed from: a */
        public volatile Descriptors.FieldDescriptor f37569a;

        public AbstractC6760f() {
        }

        /* renamed from: a */
        public abstract Descriptors.FieldDescriptor mo29237a();

        @Override // com.google.protobuf.GeneratedMessage.InterfaceC6761g
        public Descriptors.FieldDescriptor getDescriptor() {
            if (this.f37569a == null) {
                synchronized (this) {
                    if (this.f37569a == null) {
                        this.f37569a = mo29237a();
                    }
                }
            }
            return this.f37569a;
        }

        public /* synthetic */ AbstractC6760f(C6755a c6755a) {
            this();
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessage$g */
    /* loaded from: classes6.dex */
    public interface InterfaceC6761g {
        Descriptors.FieldDescriptor getDescriptor();
    }

    public GeneratedMessage() {
        this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends ExtendableMessage<MessageType>, T> Extension<MessageType, T> checkNotLite(ExtensionLite<MessageType, T> extension) {
        if (extension.mo29071a()) {
            throw new IllegalArgumentException("Expected non-lite extension.");
        }
        return (Extension) extension;
    }

    public static int computeStringSize(final int fieldNumber, final Object value) {
        return value instanceof String ? CodedOutputStream.computeStringSize(fieldNumber, (String) value) : CodedOutputStream.computeBytesSize(fieldNumber, (ByteString) value);
    }

    public static int computeStringSizeNoTag(final Object value) {
        return value instanceof String ? CodedOutputStream.computeStringSizeNoTag((String) value) : CodedOutputStream.computeBytesSizeNoTag((ByteString) value);
    }

    public static void enableAlwaysUseFieldBuildersForTesting() {
        alwaysUseFieldBuilders = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<Descriptors.FieldDescriptor, Object> getAllFieldsMutable(boolean getBytesForString) {
        TreeMap treeMap = new TreeMap();
        List<Descriptors.FieldDescriptor> fields = internalGetFieldAccessorTable().f37496a.getFields();
        int i = 0;
        while (i < fields.size()) {
            Descriptors.FieldDescriptor fieldDescriptor = fields.get(i);
            Descriptors.OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
            if (containingOneof != null) {
                i += containingOneof.getFieldCount() - 1;
                if (hasOneof(containingOneof)) {
                    fieldDescriptor = getOneofFieldDescriptor(containingOneof);
                    if (getBytesForString || fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.STRING) {
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                    } else {
                        treeMap.put(fieldDescriptor, getFieldRaw(fieldDescriptor));
                    }
                    i++;
                } else {
                    i++;
                }
            } else {
                if (fieldDescriptor.isRepeated()) {
                    List list = (List) getField(fieldDescriptor);
                    if (!list.isEmpty()) {
                        treeMap.put(fieldDescriptor, list);
                    }
                } else {
                    if (!hasField(fieldDescriptor)) {
                    }
                    if (getBytesForString) {
                    }
                    treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                }
                i++;
            }
        }
        return treeMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.reflect.Method getMethodOrDie(final Class clazz, final String name, final Class... params) {
        try {
            return clazz.getMethod(name, params);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Generated message class \"" + clazz.getName() + "\" missing method \"" + name + "\".", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object invokeOrDie(final java.lang.reflect.Method method, final Object object, final Object... params) {
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

    public static <ContainingType extends Message, Type> GeneratedExtension<ContainingType, Type> newFileScopedGeneratedExtension(final Class singularType, final Message defaultInstance) {
        return new GeneratedExtension<>(null, singularType, defaultInstance, Extension.ExtensionType.IMMUTABLE);
    }

    public static <ContainingType extends Message, Type> GeneratedExtension<ContainingType, Type> newMessageScopedGeneratedExtension(final Message scope, final int descriptorIndex, final Class singularType, final Message defaultInstance) {
        return new GeneratedExtension<>(new C6756b(scope, descriptorIndex), singularType, defaultInstance, Extension.ExtensionType.IMMUTABLE);
    }

    public static <M extends Message> M parseDelimitedWithIOException(Parser<M> parser, InputStream input) throws IOException {
        try {
            return parser.parseDelimitedFrom(input);
        } catch (InvalidProtocolBufferException e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, InputStream input) throws IOException {
        try {
            return parser.parseFrom(input);
        } catch (InvalidProtocolBufferException e) {
            throw e.unwrapIOException();
        }
    }

    public static void writeString(CodedOutputStream output, final int fieldNumber, final Object value) throws IOException {
        if (value instanceof String) {
            output.writeString(fieldNumber, (String) value);
        } else {
            output.writeBytes(fieldNumber, (ByteString) value);
        }
    }

    public static void writeStringNoTag(CodedOutputStream output, final Object value) throws IOException {
        if (value instanceof String) {
            output.writeStringNoTag((String) value);
        } else {
            output.writeBytesNoTag((ByteString) value);
        }
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        return Collections.unmodifiableMap(getAllFieldsMutable(false));
    }

    public Map<Descriptors.FieldDescriptor, Object> getAllFieldsRaw() {
        return Collections.unmodifiableMap(getAllFieldsMutable(true));
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Descriptors.Descriptor getDescriptorForType() {
        return internalGetFieldAccessorTable().f37496a;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getField(final Descriptors.FieldDescriptor field) {
        return internalGetFieldAccessorTable().m29204e(field).mo29219m(this);
    }

    public Object getFieldRaw(final Descriptors.FieldDescriptor field) {
        return internalGetFieldAccessorTable().m29204e(field).mo29208b(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(final Descriptors.OneofDescriptor oneof) {
        return internalGetFieldAccessorTable().m29205f(oneof).m29230c(this);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<? extends GeneratedMessage> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getRepeatedField(final Descriptors.FieldDescriptor field, final int index) {
        return internalGetFieldAccessorTable().m29204e(field).mo29214h(this, index);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(final Descriptors.FieldDescriptor field) {
        return internalGetFieldAccessorTable().m29204e(field).mo29210d(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int m29410e = MessageReflection.m29410e(this, getAllFieldsRaw());
        this.memoizedSize = m29410e;
        return m29410e;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public UnknownFieldSet getUnknownFields() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasField(final Descriptors.FieldDescriptor field) {
        return internalGetFieldAccessorTable().m29204e(field).mo29217k(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public boolean hasOneof(final Descriptors.OneofDescriptor oneof) {
        return internalGetFieldAccessorTable().m29205f(oneof).m29232e(this);
    }

    public abstract FieldAccessorTable internalGetFieldAccessorTable();

    public MapField internalGetMapField(int fieldNumber) {
        throw new RuntimeException("No map fields found in " + getClass().getName());
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        for (Descriptors.FieldDescriptor fieldDescriptor : getDescriptorForType().getFields()) {
            if (fieldDescriptor.isRequired() && !hasField(fieldDescriptor)) {
                return false;
            }
            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (fieldDescriptor.isRepeated()) {
                    Iterator it2 = ((List) getField(fieldDescriptor)).iterator();
                    while (it2.hasNext()) {
                        if (!((Message) it2.next()).isInitialized()) {
                            return false;
                        }
                    }
                } else if (hasField(fieldDescriptor) && !((Message) getField(fieldDescriptor)).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public void makeExtensionsImmutable() {
    }

    @Override // com.google.protobuf.AbstractMessage
    public Message.Builder newBuilderForType(final AbstractMessage.BuilderParent parent) {
        return newBuilderForType((BuilderParent) new C6755a(parent));
    }

    public abstract Message.Builder newBuilderForType(BuilderParent parent);

    public boolean parseUnknownField(CodedInputStream input, UnknownFieldSet.Builder unknownFields, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
        return unknownFields.mergeFieldFrom(tag, input);
    }

    public Object writeReplace() throws ObjectStreamException {
        return new GeneratedMessageLite.SerializedForm(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(final CodedOutputStream output) throws IOException {
        MessageReflection.m29417l(this, getAllFieldsRaw(), output, false);
    }

    /* loaded from: classes6.dex */
    public static abstract class ExtendableBuilder<MessageType extends ExtendableMessage, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends Builder<BuilderType> implements ExtendableMessageOrBuilder<MessageType> {

        /* renamed from: i */
        public FieldSet<Descriptors.FieldDescriptor> f37491i;

        public ExtendableBuilder() {
            this.f37491i = FieldSet.m29136s();
        }

        public final <Type> BuilderType addExtension(final ExtensionLite<MessageType, List<Type>> extensionLite, final Type value) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            m29198l(checkNotLite);
            m29195i();
            this.f37491i.m29151h(checkNotLite.getDescriptor(), checkNotLite.singularToReflectionType(value));
            onChanged();
            return this;
        }

        public final <Type> BuilderType clearExtension(final ExtensionLite<MessageType, ?> extensionLite) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            m29198l(checkNotLite);
            m29195i();
            this.f37491i.m29153j(checkNotLite.getDescriptor());
            onChanged();
            return this;
        }

        public boolean extensionsAreInitialized() {
            return this.f37491i.m29140E();
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map m29192f = m29192f();
            m29192f.putAll(this.f37491i.m29156t());
            return Collections.unmodifiableMap(m29192f);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, Type> extensionLite) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            m29198l(checkNotLite);
            Descriptors.FieldDescriptor descriptor = checkNotLite.getDescriptor();
            Object m29157u = this.f37491i.m29157u(descriptor);
            if (m29157u == null) {
                if (descriptor.isRepeated()) {
                    return (Type) Collections.emptyList();
                }
                if (descriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    return (Type) checkNotLite.getMessageDefaultInstance();
                }
                return (Type) checkNotLite.fromReflectionType(descriptor.getDefaultValue());
            }
            return (Type) checkNotLite.fromReflectionType(m29157u);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(final ExtensionLite<MessageType, List<Type>> extensionLite) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            m29198l(checkNotLite);
            return this.f37491i.m29161y(checkNotLite.getDescriptor());
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageOrBuilder
        public Object getField(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getField(field);
            }
            m29197k(field);
            Object m29157u = this.f37491i.m29157u(field);
            return m29157u == null ? field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE ? DynamicMessage.getDefaultInstance(field.getMessageType()) : field.getDefaultValue() : m29157u;
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(final Descriptors.FieldDescriptor field, final int index) {
            if (!field.isExtension()) {
                return super.getRepeatedField(field, index);
            }
            m29197k(field);
            return this.f37491i.m29160x(field, index);
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getRepeatedFieldCount(field);
            }
            m29197k(field);
            return this.f37491i.m29161y(field);
        }

        /* renamed from: h */
        public final FieldSet<Descriptors.FieldDescriptor> m29194h() {
            this.f37491i.m29142J();
            return this.f37491i;
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(final ExtensionLite<MessageType, Type> extensionLite) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            m29198l(checkNotLite);
            return this.f37491i.m29137B(checkNotLite.getDescriptor());
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageOrBuilder
        public boolean hasField(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.hasField(field);
            }
            m29197k(field);
            return this.f37491i.m29137B(field);
        }

        /* renamed from: i */
        public final void m29195i() {
            if (this.f37491i.m29139D()) {
                this.f37491i = this.f37491i.clone();
            }
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return super.isInitialized() && extensionsAreInitialized();
        }

        /* renamed from: j */
        public void m29196j(FieldSet<Descriptors.FieldDescriptor> extensions) {
            this.f37491i = extensions;
        }

        /* renamed from: k */
        public final void m29197k(final Descriptors.FieldDescriptor field) {
            if (field.getContainingType() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* renamed from: l */
        public final void m29198l(final Extension<MessageType, ?> extension) {
            if (extension.getDescriptor().getContainingType() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("Extension is for type \"" + extension.getDescriptor().getContainingType().getFullName() + "\" which does not match message type \"" + getDescriptorForType().getFullName() + "\".");
        }

        public final void mergeExtensionFields(final ExtendableMessage other) {
            m29195i();
            this.f37491i.m29143K(other.extensions);
            onChanged();
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder
        public boolean parseUnknownField(final CodedInputStream input, final UnknownFieldSet.Builder unknownFields, final ExtensionRegistryLite extensionRegistry, final int tag) throws IOException {
            return MessageReflection.m29412g(input, unknownFields, extensionRegistry, getDescriptorForType(), new MessageReflection.C6800b(this), tag);
        }

        public final <Type> BuilderType setExtension(final ExtensionLite<MessageType, Type> extensionLite, final Type value) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            m29198l(checkNotLite);
            m29195i();
            this.f37491i.m29145P(checkNotLite.getDescriptor(), checkNotLite.toReflectionType(value));
            onChanged();
            return this;
        }

        public ExtendableBuilder(BuilderParent parent) {
            super(parent);
            this.f37491i = FieldSet.m29136s();
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder
        public BuilderType addRepeatedField(final Descriptors.FieldDescriptor field, final Object value) {
            if (field.isExtension()) {
                m29197k(field);
                m29195i();
                this.f37491i.m29151h(field, value);
                onChanged();
                return this;
            }
            return (BuilderType) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder
        public BuilderType clearField(final Descriptors.FieldDescriptor field) {
            if (field.isExtension()) {
                m29197k(field);
                m29195i();
                this.f37491i.m29153j(field);
                onChanged();
                return this;
            }
            return (BuilderType) super.clearField(field);
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder
        public BuilderType setField(final Descriptors.FieldDescriptor field, final Object value) {
            if (field.isExtension()) {
                m29197k(field);
                m29195i();
                this.f37491i.m29145P(field, value);
                onChanged();
                return this;
            }
            return (BuilderType) super.setField(field, value);
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.Message.Builder
        public BuilderType setRepeatedField(final Descriptors.FieldDescriptor field, final int index, final Object value) {
            if (field.isExtension()) {
                m29197k(field);
                m29195i();
                this.f37491i.m29146Q(field, index, value);
                onChanged();
                return this;
            }
            return (BuilderType) super.setRepeatedField(field, index, value);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(final Extension<MessageType, Type> extension) {
            return hasExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType clear() {
            this.f37491i = FieldSet.m29136s();
            return (BuilderType) super.clear();
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(final Extension<MessageType, List<Type>> extension) {
            return getExtensionCount((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(final GeneratedExtension<MessageType, Type> extension) {
            return hasExtension((ExtensionLite) extension);
        }

        public final <Type> BuilderType clearExtension(final Extension<MessageType, ?> extension) {
            return clearExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(final GeneratedExtension<MessageType, List<Type>> extension) {
            return getExtensionCount((ExtensionLite) extension);
        }

        public final <Type> BuilderType addExtension(final Extension<MessageType, List<Type>> extension, final Type value) {
            return addExtension(extension, (Extension<MessageType, List<Type>>) value);
        }

        public <Type> BuilderType clearExtension(final GeneratedExtension<MessageType, ?> extension) {
            return clearExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public BuilderType mo72165clone() {
            return (BuilderType) super.mo72165clone();
        }

        public final <Type> BuilderType setExtension(final ExtensionLite<MessageType, List<Type>> extensionLite, final int index, final Type value) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            m29198l(checkNotLite);
            m29195i();
            this.f37491i.m29146Q(checkNotLite.getDescriptor(), index, checkNotLite.singularToReflectionType(value));
            onChanged();
            return this;
        }

        public <Type> BuilderType addExtension(final GeneratedExtension<MessageType, List<Type>> extension, final Type value) {
            return addExtension((ExtensionLite<MessageType, List<GeneratedExtension<MessageType, List<Type>>>>) extension, (GeneratedExtension<MessageType, List<Type>>) value);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extensionLite, int i) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            m29198l(checkNotLite);
            return (Type) checkNotLite.singularFromReflectionType(this.f37491i.m29160x(checkNotLite.getDescriptor(), i));
        }

        public final <Type> BuilderType setExtension(final Extension<MessageType, Type> extension, final Type value) {
            return setExtension(extension, (Extension<MessageType, Type>) value);
        }

        public <Type> BuilderType setExtension(final GeneratedExtension<MessageType, Type> extension, final Type value) {
            return setExtension((ExtensionLite<MessageType, GeneratedExtension<MessageType, Type>>) extension, (GeneratedExtension<MessageType, Type>) value);
        }

        public final <Type> BuilderType setExtension(final Extension<MessageType, List<Type>> extension, final int index, final Type value) {
            return setExtension((ExtensionLite<MessageType, List<int>>) extension, index, (int) value);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Extension<MessageType, Type> extension) {
            return (Type) getExtension((ExtensionLite) extension);
        }

        public <Type> BuilderType setExtension(final GeneratedExtension<MessageType, List<Type>> extension, final int index, final Type value) {
            return setExtension((ExtensionLite<MessageType, List<int>>) extension, index, (int) value);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(GeneratedExtension<MessageType, Type> generatedExtension) {
            return (Type) getExtension((ExtensionLite) generatedExtension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Extension<MessageType, List<Type>> extension, int i) {
            return (Type) getExtension((ExtensionLite) extension, i);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(GeneratedExtension<MessageType, List<Type>> generatedExtension, int i) {
            return (Type) getExtension((ExtensionLite) generatedExtension, i);
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage> extends GeneratedMessage implements ExtendableMessageOrBuilder<MessageType> {
        private static final long serialVersionUID = 1;
        private final FieldSet<Descriptors.FieldDescriptor> extensions;

        /* loaded from: classes6.dex */
        public class ExtensionWriter {

            /* renamed from: a */
            public final Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> f37492a;

            /* renamed from: b */
            public Map.Entry<Descriptors.FieldDescriptor, Object> f37493b;

            /* renamed from: c */
            public final boolean f37494c;

            public /* synthetic */ ExtensionWriter(ExtendableMessage extendableMessage, boolean z, C6755a c6755a) {
                this(z);
            }

            public void writeUntil(final int end, final CodedOutputStream output) throws IOException {
                while (true) {
                    Map.Entry<Descriptors.FieldDescriptor, Object> entry = this.f37493b;
                    if (entry == null || entry.getKey().getNumber() >= end) {
                        return;
                    }
                    Descriptors.FieldDescriptor key = this.f37493b.getKey();
                    if (!this.f37494c || key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated()) {
                        FieldSet.m29122U(key, this.f37493b.getValue(), output);
                    } else if (this.f37493b instanceof LazyField.C6786b) {
                        output.writeRawMessageSetExtension(key.getNumber(), ((LazyField.C6786b) this.f37493b).m29352a().toByteString());
                    } else {
                        output.writeMessageSetExtension(key.getNumber(), (Message) this.f37493b.getValue());
                    }
                    if (this.f37492a.hasNext()) {
                        this.f37493b = this.f37492a.next();
                    } else {
                        this.f37493b = null;
                    }
                }
            }

            public ExtensionWriter(final boolean messageSetWireFormat) {
                Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> m29141I = ExtendableMessage.this.extensions.m29141I();
                this.f37492a = m29141I;
                if (m29141I.hasNext()) {
                    this.f37493b = m29141I.next();
                }
                this.f37494c = messageSetWireFormat;
            }
        }

        public ExtendableMessage() {
            this.extensions = FieldSet.m29118N();
        }

        private void verifyContainingType(final Descriptors.FieldDescriptor field) {
            if (field.getContainingType() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        private void verifyExtensionContainingType(final Extension<MessageType, ?> extension) {
            if (extension.getDescriptor().getContainingType() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("Extension is for type \"" + extension.getDescriptor().getContainingType().getFullName() + "\" which does not match message type \"" + getDescriptorForType().getFullName() + "\".");
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

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Map<Descriptors.FieldDescriptor, Object> getAllFieldsRaw() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, Type> extensionLite) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            verifyExtensionContainingType(checkNotLite);
            Descriptors.FieldDescriptor descriptor = checkNotLite.getDescriptor();
            Object m29157u = this.extensions.m29157u(descriptor);
            if (m29157u == null) {
                if (descriptor.isRepeated()) {
                    return (Type) Collections.emptyList();
                }
                if (descriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    return (Type) checkNotLite.getMessageDefaultInstance();
                }
                return (Type) checkNotLite.fromReflectionType(descriptor.getDefaultValue());
            }
            return (Type) checkNotLite.fromReflectionType(m29157u);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(final ExtensionLite<MessageType, List<Type>> extensionLite) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            verifyExtensionContainingType(checkNotLite);
            return this.extensions.m29161y(checkNotLite.getDescriptor());
        }

        public Map<Descriptors.FieldDescriptor, Object> getExtensionFields() {
            return this.extensions.m29156t();
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public Object getField(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getField(field);
            }
            verifyContainingType(field);
            Object m29157u = this.extensions.m29157u(field);
            return m29157u == null ? field.isRepeated() ? Collections.emptyList() : field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE ? DynamicMessage.getDefaultInstance(field.getMessageType()) : field.getDefaultValue() : m29157u;
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(final Descriptors.FieldDescriptor field, final int index) {
            if (!field.isExtension()) {
                return super.getRepeatedField(field, index);
            }
            verifyContainingType(field);
            return this.extensions.m29160x(field, index);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getRepeatedFieldCount(field);
            }
            verifyContainingType(field);
            return this.extensions.m29161y(field);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(final ExtensionLite<MessageType, Type> extensionLite) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            verifyExtensionContainingType(checkNotLite);
            return this.extensions.m29137B(checkNotLite.getDescriptor());
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.MessageOrBuilder
        public boolean hasField(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.hasField(field);
            }
            verifyContainingType(field);
            return this.extensions.m29137B(field);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return super.isInitialized() && extensionsAreInitialized();
        }

        @Override // com.google.protobuf.GeneratedMessage
        public void makeExtensionsImmutable() {
            this.extensions.m29142J();
        }

        public ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter() {
            return new ExtensionWriter(this, false, null);
        }

        public ExtendableMessage<MessageType>.ExtensionWriter newMessageSetExtensionWriter() {
            return new ExtensionWriter(this, true, null);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public boolean parseUnknownField(CodedInputStream input, UnknownFieldSet.Builder unknownFields, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
            return MessageReflection.m29412g(input, unknownFields, extensionRegistry, getDescriptorForType(), new MessageReflection.C6801c(this.extensions), tag);
        }

        public ExtendableMessage(ExtendableBuilder<MessageType, ?> builder) {
            super(builder);
            this.extensions = builder.m29194h();
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(final Extension<MessageType, Type> extension) {
            return hasExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(final Extension<MessageType, List<Type>> extension) {
            return getExtensionCount((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(final GeneratedExtension<MessageType, Type> extension) {
            return hasExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(final GeneratedExtension<MessageType, List<Type>> extension) {
            return getExtensionCount((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(ExtensionLite<MessageType, List<Type>> extensionLite, int i) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(extensionLite);
            verifyExtensionContainingType(checkNotLite);
            return (Type) checkNotLite.singularFromReflectionType(this.extensions.m29160x(checkNotLite.getDescriptor(), i));
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Extension<MessageType, Type> extension) {
            return (Type) getExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(GeneratedExtension<MessageType, Type> generatedExtension) {
            return (Type) getExtension((ExtensionLite) generatedExtension);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Extension<MessageType, List<Type>> extension, int i) {
            return (Type) getExtension((ExtensionLite) extension, i);
        }

        @Override // com.google.protobuf.GeneratedMessage.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(GeneratedExtension<MessageType, List<Type>> generatedExtension, int i) {
            return (Type) getExtension((ExtensionLite) generatedExtension, i);
        }
    }

    /* loaded from: classes6.dex */
    public static final class FieldAccessorTable {

        /* renamed from: a */
        public final Descriptors.Descriptor f37496a;

        /* renamed from: b */
        public final InterfaceC6744a[] f37497b;

        /* renamed from: c */
        public String[] f37498c;

        /* renamed from: d */
        public final C6746c[] f37499d;

        /* renamed from: e */
        public volatile boolean f37500e;

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$a */
        /* loaded from: classes6.dex */
        public interface InterfaceC6744a {
            /* renamed from: a */
            void mo29207a(Builder builder, Object value);

            /* renamed from: b */
            Object mo29208b(GeneratedMessage message);

            /* renamed from: c */
            int mo29209c(Builder builder);

            /* renamed from: d */
            int mo29210d(GeneratedMessage message);

            /* renamed from: e */
            Object mo29211e(Builder builder);

            /* renamed from: f */
            Object mo29212f(GeneratedMessage message, int index);

            /* renamed from: g */
            Message.Builder mo29213g(Builder builder, int index);

            /* renamed from: h */
            Object mo29214h(GeneratedMessage message, int index);

            /* renamed from: i */
            void mo29215i(Builder builder, int index, Object value);

            /* renamed from: j */
            void mo29216j(Builder builder);

            /* renamed from: k */
            boolean mo29217k(GeneratedMessage message);

            /* renamed from: l */
            boolean mo29218l(Builder builder);

            /* renamed from: m */
            Object mo29219m(GeneratedMessage message);

            /* renamed from: n */
            Object mo29220n(Builder builder);

            Message.Builder newBuilder();

            /* renamed from: o */
            Object mo29221o(Builder builder, int index);

            /* renamed from: p */
            void mo29222p(Builder builder, Object value);

            /* renamed from: q */
            Object mo29223q(Builder builder, int index);

            /* renamed from: r */
            Message.Builder mo29224r(Builder builder);
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$b */
        /* loaded from: classes6.dex */
        public static class C6745b implements InterfaceC6744a {

            /* renamed from: a */
            public final Descriptors.FieldDescriptor f37501a;

            /* renamed from: b */
            public final Message f37502b;

            public C6745b(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass) {
                this.f37501a = descriptor;
                this.f37502b = m29226t((GeneratedMessage) GeneratedMessage.invokeOrDie(GeneratedMessage.getMethodOrDie(messageClass, C6871h.f38109a, new Class[0]), null, new Object[0])).m29401f();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: a */
            public void mo29207a(Builder builder, Object value) {
                mo29216j(builder);
                Iterator it2 = ((List) value).iterator();
                while (it2.hasNext()) {
                    mo29222p(builder, it2.next());
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: b */
            public Object mo29208b(GeneratedMessage message) {
                return mo29219m(message);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: c */
            public int mo29209c(Builder builder) {
                return m29225s(builder).m29400e().size();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: d */
            public int mo29210d(GeneratedMessage message) {
                return m29226t(message).m29400e().size();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: e */
            public Object mo29211e(Builder builder) {
                return mo29220n(builder);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: f */
            public Object mo29212f(GeneratedMessage message, int index) {
                return mo29214h(message, index);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: g */
            public Message.Builder mo29213g(Builder builder, int index) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: h */
            public Object mo29214h(GeneratedMessage message, int index) {
                return m29226t(message).m29400e().get(index);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: i */
            public void mo29215i(Builder builder, int index, Object value) {
                m29227u(builder).m29402g().set(index, (Message) value);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: j */
            public void mo29216j(Builder builder) {
                m29227u(builder).m29402g().clear();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: k */
            public boolean mo29217k(GeneratedMessage message) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: l */
            public boolean mo29218l(Builder builder) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: m */
            public Object mo29219m(GeneratedMessage message) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < mo29210d(message); i++) {
                    arrayList.add(mo29214h(message, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: n */
            public Object mo29220n(Builder builder) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < mo29209c(builder); i++) {
                    arrayList.add(mo29221o(builder, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            public Message.Builder newBuilder() {
                return this.f37502b.newBuilderForType();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: o */
            public Object mo29221o(Builder builder, int index) {
                return m29225s(builder).m29400e().get(index);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: p */
            public void mo29222p(Builder builder, Object value) {
                m29227u(builder).m29402g().add((Message) value);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: q */
            public Object mo29223q(Builder builder, int index) {
                return mo29221o(builder, index);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: r */
            public Message.Builder mo29224r(Builder builder) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            /* renamed from: s */
            public final MapField<?, ?> m29225s(Builder builder) {
                return builder.internalGetMapField(this.f37501a.getNumber());
            }

            /* renamed from: t */
            public final MapField<?, ?> m29226t(GeneratedMessage message) {
                return message.internalGetMapField(this.f37501a.getNumber());
            }

            /* renamed from: u */
            public final MapField<?, ?> m29227u(Builder builder) {
                return builder.internalGetMutableMapField(this.f37501a.getNumber());
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$c */
        /* loaded from: classes6.dex */
        public static class C6746c {

            /* renamed from: a */
            public final Descriptors.Descriptor f37503a;

            /* renamed from: b */
            public final java.lang.reflect.Method f37504b;

            /* renamed from: c */
            public final java.lang.reflect.Method f37505c;

            /* renamed from: d */
            public final java.lang.reflect.Method f37506d;

            public C6746c(final Descriptors.Descriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass) {
                this.f37503a = descriptor;
                this.f37504b = GeneratedMessage.getMethodOrDie(messageClass, "get" + camelCaseName + "Case", new Class[0]);
                this.f37505c = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName + "Case", new Class[0]);
                StringBuilder sb = new StringBuilder();
                sb.append(Constants.CLEAR_ATTRIBUTES);
                sb.append(camelCaseName);
                this.f37506d = GeneratedMessage.getMethodOrDie(builderClass, sb.toString(), new Class[0]);
            }

            /* renamed from: a */
            public void m29228a(final Builder builder) {
                GeneratedMessage.invokeOrDie(this.f37506d, builder, new Object[0]);
            }

            /* renamed from: b */
            public Descriptors.FieldDescriptor m29229b(Builder builder) {
                int number = ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f37505c, builder, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f37503a.findFieldByNumber(number);
                }
                return null;
            }

            /* renamed from: c */
            public Descriptors.FieldDescriptor m29230c(final GeneratedMessage message) {
                int number = ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f37504b, message, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f37503a.findFieldByNumber(number);
                }
                return null;
            }

            /* renamed from: d */
            public boolean m29231d(Builder builder) {
                return ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f37505c, builder, new Object[0])).getNumber() != 0;
            }

            /* renamed from: e */
            public boolean m29232e(final GeneratedMessage message) {
                return ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f37504b, message, new Object[0])).getNumber() != 0;
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$d */
        /* loaded from: classes6.dex */
        public static final class C6747d extends C6748e {

            /* renamed from: k */
            public Descriptors.EnumDescriptor f37507k;

            /* renamed from: l */
            public final java.lang.reflect.Method f37508l;

            /* renamed from: m */
            public final java.lang.reflect.Method f37509m;

            /* renamed from: n */
            public boolean f37510n;

            /* renamed from: o */
            public java.lang.reflect.Method f37511o;

            /* renamed from: p */
            public java.lang.reflect.Method f37512p;

            /* renamed from: q */
            public java.lang.reflect.Method f37513q;

            /* renamed from: r */
            public java.lang.reflect.Method f37514r;

            public C6747d(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass) {
                super(descriptor, camelCaseName, messageClass, builderClass);
                this.f37507k = descriptor.getEnumType();
                this.f37508l = GeneratedMessage.getMethodOrDie(this.f37515a, "valueOf", Descriptors.EnumValueDescriptor.class);
                this.f37509m = GeneratedMessage.getMethodOrDie(this.f37515a, "getValueDescriptor", new Class[0]);
                boolean z = !descriptor.legacyEnumFieldTreatedAsClosed();
                this.f37510n = z;
                if (z) {
                    Class cls = Integer.TYPE;
                    this.f37511o = GeneratedMessage.getMethodOrDie(messageClass, "get" + camelCaseName + "Value", cls);
                    this.f37512p = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName + "Value", cls);
                    this.f37513q = GeneratedMessage.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName + "Value", cls, cls);
                    this.f37514r = GeneratedMessage.getMethodOrDie(builderClass, "add" + camelCaseName + "Value", cls);
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: h */
            public Object mo29214h(final GeneratedMessage message, final int index) {
                if (!this.f37510n) {
                    return GeneratedMessage.invokeOrDie(this.f37509m, super.mo29214h(message, index), new Object[0]);
                }
                return this.f37507k.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessage.invokeOrDie(this.f37511o, message, Integer.valueOf(index))).intValue());
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: i */
            public void mo29215i(final Builder builder, final int index, final Object value) {
                if (this.f37510n) {
                    GeneratedMessage.invokeOrDie(this.f37513q, builder, Integer.valueOf(index), Integer.valueOf(((Descriptors.EnumValueDescriptor) value).getNumber()));
                } else {
                    super.mo29215i(builder, index, GeneratedMessage.invokeOrDie(this.f37508l, null, value));
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: m */
            public Object mo29219m(final GeneratedMessage message) {
                ArrayList arrayList = new ArrayList();
                int mo29210d = mo29210d(message);
                for (int i = 0; i < mo29210d; i++) {
                    arrayList.add(mo29214h(message, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: n */
            public Object mo29220n(final Builder builder) {
                ArrayList arrayList = new ArrayList();
                int mo29209c = mo29209c(builder);
                for (int i = 0; i < mo29209c; i++) {
                    arrayList.add(mo29221o(builder, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: o */
            public Object mo29221o(final Builder builder, final int index) {
                if (!this.f37510n) {
                    return GeneratedMessage.invokeOrDie(this.f37509m, super.mo29221o(builder, index), new Object[0]);
                }
                return this.f37507k.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessage.invokeOrDie(this.f37512p, builder, Integer.valueOf(index))).intValue());
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: p */
            public void mo29222p(final Builder builder, final Object value) {
                if (this.f37510n) {
                    GeneratedMessage.invokeOrDie(this.f37514r, builder, Integer.valueOf(((Descriptors.EnumValueDescriptor) value).getNumber()));
                } else {
                    super.mo29222p(builder, GeneratedMessage.invokeOrDie(this.f37508l, null, value));
                }
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$e */
        /* loaded from: classes6.dex */
        public static class C6748e implements InterfaceC6744a {

            /* renamed from: a */
            public final Class f37515a;

            /* renamed from: b */
            public final java.lang.reflect.Method f37516b;

            /* renamed from: c */
            public final java.lang.reflect.Method f37517c;

            /* renamed from: d */
            public final java.lang.reflect.Method f37518d;

            /* renamed from: e */
            public final java.lang.reflect.Method f37519e;

            /* renamed from: f */
            public final java.lang.reflect.Method f37520f;

            /* renamed from: g */
            public final java.lang.reflect.Method f37521g;

            /* renamed from: h */
            public final java.lang.reflect.Method f37522h;

            /* renamed from: i */
            public final java.lang.reflect.Method f37523i;

            /* renamed from: j */
            public final java.lang.reflect.Method f37524j;

            public C6748e(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass) {
                this.f37516b = GeneratedMessage.getMethodOrDie(messageClass, "get" + camelCaseName + C6883t.f38147a, new Class[0]);
                this.f37517c = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName + C6883t.f38147a, new Class[0]);
                StringBuilder sb = new StringBuilder();
                sb.append("get");
                sb.append(camelCaseName);
                String sb2 = sb.toString();
                Class cls = Integer.TYPE;
                java.lang.reflect.Method methodOrDie = GeneratedMessage.getMethodOrDie(messageClass, sb2, cls);
                this.f37518d = methodOrDie;
                this.f37519e = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName, cls);
                Class<?> returnType = methodOrDie.getReturnType();
                this.f37515a = returnType;
                this.f37520f = GeneratedMessage.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName, cls, returnType);
                this.f37521g = GeneratedMessage.getMethodOrDie(builderClass, "add" + camelCaseName, returnType);
                this.f37522h = GeneratedMessage.getMethodOrDie(messageClass, "get" + camelCaseName + "Count", new Class[0]);
                this.f37523i = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName + "Count", new Class[0]);
                StringBuilder sb3 = new StringBuilder();
                sb3.append(Constants.CLEAR_ATTRIBUTES);
                sb3.append(camelCaseName);
                this.f37524j = GeneratedMessage.getMethodOrDie(builderClass, sb3.toString(), new Class[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: a */
            public void mo29207a(final Builder builder, final Object value) {
                mo29216j(builder);
                Iterator it2 = ((List) value).iterator();
                while (it2.hasNext()) {
                    mo29222p(builder, it2.next());
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: b */
            public Object mo29208b(final GeneratedMessage message) {
                return mo29219m(message);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: c */
            public int mo29209c(Builder builder) {
                return ((Integer) GeneratedMessage.invokeOrDie(this.f37523i, builder, new Object[0])).intValue();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: d */
            public int mo29210d(final GeneratedMessage message) {
                return ((Integer) GeneratedMessage.invokeOrDie(this.f37522h, message, new Object[0])).intValue();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: e */
            public Object mo29211e(Builder builder) {
                return mo29220n(builder);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: f */
            public Object mo29212f(GeneratedMessage message, int index) {
                return mo29214h(message, index);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: g */
            public Message.Builder mo29213g(Builder builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: h */
            public Object mo29214h(final GeneratedMessage message, final int index) {
                return GeneratedMessage.invokeOrDie(this.f37518d, message, Integer.valueOf(index));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: i */
            public void mo29215i(final Builder builder, final int index, final Object value) {
                GeneratedMessage.invokeOrDie(this.f37520f, builder, Integer.valueOf(index), value);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: j */
            public void mo29216j(final Builder builder) {
                GeneratedMessage.invokeOrDie(this.f37524j, builder, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: k */
            public boolean mo29217k(final GeneratedMessage message) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: l */
            public boolean mo29218l(Builder builder) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: m */
            public Object mo29219m(final GeneratedMessage message) {
                return GeneratedMessage.invokeOrDie(this.f37516b, message, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: n */
            public Object mo29220n(Builder builder) {
                return GeneratedMessage.invokeOrDie(this.f37517c, builder, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            public Message.Builder newBuilder() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: o */
            public Object mo29221o(Builder builder, int index) {
                return GeneratedMessage.invokeOrDie(this.f37519e, builder, Integer.valueOf(index));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: p */
            public void mo29222p(final Builder builder, final Object value) {
                GeneratedMessage.invokeOrDie(this.f37521g, builder, value);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: q */
            public Object mo29223q(Builder builder, int index) {
                return mo29221o(builder, index);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: r */
            public Message.Builder mo29224r(Builder builder) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$f */
        /* loaded from: classes6.dex */
        public static final class C6749f extends C6748e {

            /* renamed from: k */
            public final java.lang.reflect.Method f37525k;

            /* renamed from: l */
            public final java.lang.reflect.Method f37526l;

            public C6749f(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass) {
                super(descriptor, camelCaseName, messageClass, builderClass);
                this.f37525k = GeneratedMessage.getMethodOrDie(this.f37515a, "newBuilder", new Class[0]);
                this.f37526l = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName + "Builder", Integer.TYPE);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: g */
            public Message.Builder mo29213g(final Builder builder, final int index) {
                return (Message.Builder) GeneratedMessage.invokeOrDie(this.f37526l, builder, Integer.valueOf(index));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: i */
            public void mo29215i(final Builder builder, final int index, final Object value) {
                super.mo29215i(builder, index, m29233s(value));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            public Message.Builder newBuilder() {
                return (Message.Builder) GeneratedMessage.invokeOrDie(this.f37525k, null, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6748e, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: p */
            public void mo29222p(final Builder builder, final Object value) {
                super.mo29222p(builder, m29233s(value));
            }

            /* renamed from: s */
            public final Object m29233s(final Object value) {
                return this.f37515a.isInstance(value) ? value : ((Message.Builder) GeneratedMessage.invokeOrDie(this.f37525k, null, new Object[0])).mergeFrom((Message) value).build();
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$g */
        /* loaded from: classes6.dex */
        public static final class C6750g extends C6751h {

            /* renamed from: m */
            public Descriptors.EnumDescriptor f37527m;

            /* renamed from: n */
            public java.lang.reflect.Method f37528n;

            /* renamed from: o */
            public java.lang.reflect.Method f37529o;

            /* renamed from: p */
            public boolean f37530p;

            /* renamed from: q */
            public java.lang.reflect.Method f37531q;

            /* renamed from: r */
            public java.lang.reflect.Method f37532r;

            /* renamed from: s */
            public java.lang.reflect.Method f37533s;

            public C6750g(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f37527m = descriptor.getEnumType();
                this.f37528n = GeneratedMessage.getMethodOrDie(this.f37534a, "valueOf", Descriptors.EnumValueDescriptor.class);
                this.f37529o = GeneratedMessage.getMethodOrDie(this.f37534a, "getValueDescriptor", new Class[0]);
                boolean z = !descriptor.legacyEnumFieldTreatedAsClosed();
                this.f37530p = z;
                if (z) {
                    this.f37531q = GeneratedMessage.getMethodOrDie(messageClass, "get" + camelCaseName + "Value", new Class[0]);
                    this.f37532r = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName + "Value", new Class[0]);
                    this.f37533s = GeneratedMessage.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName + "Value", Integer.TYPE);
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: a */
            public void mo29207a(final Builder builder, final Object value) {
                if (this.f37530p) {
                    GeneratedMessage.invokeOrDie(this.f37533s, builder, Integer.valueOf(((Descriptors.EnumValueDescriptor) value).getNumber()));
                } else {
                    super.mo29207a(builder, GeneratedMessage.invokeOrDie(this.f37528n, null, value));
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: m */
            public Object mo29219m(final GeneratedMessage message) {
                if (!this.f37530p) {
                    return GeneratedMessage.invokeOrDie(this.f37529o, super.mo29219m(message), new Object[0]);
                }
                return this.f37527m.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessage.invokeOrDie(this.f37531q, message, new Object[0])).intValue());
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: n */
            public Object mo29220n(final Builder builder) {
                if (!this.f37530p) {
                    return GeneratedMessage.invokeOrDie(this.f37529o, super.mo29220n(builder), new Object[0]);
                }
                return this.f37527m.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessage.invokeOrDie(this.f37532r, builder, new Object[0])).intValue());
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$h */
        /* loaded from: classes6.dex */
        public static class C6751h implements InterfaceC6744a {

            /* renamed from: a */
            public final Class<?> f37534a;

            /* renamed from: b */
            public final java.lang.reflect.Method f37535b;

            /* renamed from: c */
            public final java.lang.reflect.Method f37536c;

            /* renamed from: d */
            public final java.lang.reflect.Method f37537d;

            /* renamed from: e */
            public final java.lang.reflect.Method f37538e;

            /* renamed from: f */
            public final java.lang.reflect.Method f37539f;

            /* renamed from: g */
            public final java.lang.reflect.Method f37540g;

            /* renamed from: h */
            public final java.lang.reflect.Method f37541h;

            /* renamed from: i */
            public final java.lang.reflect.Method f37542i;

            /* renamed from: j */
            public final Descriptors.FieldDescriptor f37543j;

            /* renamed from: k */
            public final boolean f37544k;

            /* renamed from: l */
            public final boolean f37545l;

            public C6751h(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass, final String containingOneofCamelCaseName) {
                java.lang.reflect.Method method;
                java.lang.reflect.Method method2;
                java.lang.reflect.Method method3;
                this.f37543j = descriptor;
                boolean z = descriptor.getContainingOneof() != null;
                this.f37544k = z;
                boolean z2 = FieldAccessorTable.m29203h(descriptor.getFile()) || (!z && descriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE);
                this.f37545l = z2;
                java.lang.reflect.Method methodOrDie = GeneratedMessage.getMethodOrDie(messageClass, "get" + camelCaseName, new Class[0]);
                this.f37535b = methodOrDie;
                this.f37536c = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName, new Class[0]);
                Class<?> returnType = methodOrDie.getReturnType();
                this.f37534a = returnType;
                this.f37537d = GeneratedMessage.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName, returnType);
                java.lang.reflect.Method method4 = null;
                if (z2) {
                    method = GeneratedMessage.getMethodOrDie(messageClass, "has" + camelCaseName, new Class[0]);
                } else {
                    method = null;
                }
                this.f37538e = method;
                if (z2) {
                    method2 = GeneratedMessage.getMethodOrDie(builderClass, "has" + camelCaseName, new Class[0]);
                } else {
                    method2 = null;
                }
                this.f37539f = method2;
                this.f37540g = GeneratedMessage.getMethodOrDie(builderClass, Constants.CLEAR_ATTRIBUTES + camelCaseName, new Class[0]);
                if (z) {
                    method3 = GeneratedMessage.getMethodOrDie(messageClass, "get" + containingOneofCamelCaseName + "Case", new Class[0]);
                } else {
                    method3 = null;
                }
                this.f37541h = method3;
                if (z) {
                    method4 = GeneratedMessage.getMethodOrDie(builderClass, "get" + containingOneofCamelCaseName + "Case", new Class[0]);
                }
                this.f37542i = method4;
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: a */
            public void mo29207a(final Builder builder, final Object value) {
                GeneratedMessage.invokeOrDie(this.f37537d, builder, value);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: b */
            public Object mo29208b(final GeneratedMessage message) {
                return mo29219m(message);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: c */
            public int mo29209c(Builder builder) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: d */
            public int mo29210d(final GeneratedMessage message) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: e */
            public Object mo29211e(Builder builder) {
                return mo29220n(builder);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: f */
            public Object mo29212f(final GeneratedMessage message, final int index) {
                throw new UnsupportedOperationException("getRepeatedFieldRaw() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: g */
            public Message.Builder mo29213g(Builder builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: h */
            public Object mo29214h(final GeneratedMessage message, final int index) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: i */
            public void mo29215i(final Builder builder, final int index, final Object value) {
                throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: j */
            public void mo29216j(final Builder builder) {
                GeneratedMessage.invokeOrDie(this.f37540g, builder, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: k */
            public boolean mo29217k(final GeneratedMessage message) {
                return !this.f37545l ? this.f37544k ? m29235t(message) == this.f37543j.getNumber() : !mo29219m(message).equals(this.f37543j.getDefaultValue()) : ((Boolean) GeneratedMessage.invokeOrDie(this.f37538e, message, new Object[0])).booleanValue();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: l */
            public boolean mo29218l(Builder builder) {
                return !this.f37545l ? this.f37544k ? m29234s(builder) == this.f37543j.getNumber() : !mo29220n(builder).equals(this.f37543j.getDefaultValue()) : ((Boolean) GeneratedMessage.invokeOrDie(this.f37539f, builder, new Object[0])).booleanValue();
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: m */
            public Object mo29219m(final GeneratedMessage message) {
                return GeneratedMessage.invokeOrDie(this.f37535b, message, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: n */
            public Object mo29220n(Builder builder) {
                return GeneratedMessage.invokeOrDie(this.f37536c, builder, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            public Message.Builder newBuilder() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: o */
            public Object mo29221o(Builder builder, int index) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: p */
            public void mo29222p(final Builder builder, final Object value) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: q */
            public Object mo29223q(Builder builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldRaw() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: r */
            public Message.Builder mo29224r(Builder builder) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            /* renamed from: s */
            public final int m29234s(final Builder builder) {
                return ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f37542i, builder, new Object[0])).getNumber();
            }

            /* renamed from: t */
            public final int m29235t(final GeneratedMessage message) {
                return ((Internal.EnumLite) GeneratedMessage.invokeOrDie(this.f37541h, message, new Object[0])).getNumber();
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$i */
        /* loaded from: classes6.dex */
        public static final class C6752i extends C6751h {

            /* renamed from: m */
            public final java.lang.reflect.Method f37546m;

            /* renamed from: n */
            public final java.lang.reflect.Method f37547n;

            public C6752i(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f37546m = GeneratedMessage.getMethodOrDie(this.f37534a, "newBuilder", new Class[0]);
                this.f37547n = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName + "Builder", new Class[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: a */
            public void mo29207a(final Builder builder, final Object value) {
                super.mo29207a(builder, m29236u(value));
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            public Message.Builder newBuilder() {
                return (Message.Builder) GeneratedMessage.invokeOrDie(this.f37546m, null, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: r */
            public Message.Builder mo29224r(Builder builder) {
                return (Message.Builder) GeneratedMessage.invokeOrDie(this.f37547n, builder, new Object[0]);
            }

            /* renamed from: u */
            public final Object m29236u(final Object value) {
                return this.f37534a.isInstance(value) ? value : ((Message.Builder) GeneratedMessage.invokeOrDie(this.f37546m, null, new Object[0])).mergeFrom((Message) value).buildPartial();
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessage$FieldAccessorTable$j */
        /* loaded from: classes6.dex */
        public static final class C6753j extends C6751h {

            /* renamed from: m */
            public final java.lang.reflect.Method f37548m;

            /* renamed from: n */
            public final java.lang.reflect.Method f37549n;

            /* renamed from: o */
            public final java.lang.reflect.Method f37550o;

            public C6753j(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f37548m = GeneratedMessage.getMethodOrDie(messageClass, "get" + camelCaseName + C6883t.f38150d, new Class[0]);
                this.f37549n = GeneratedMessage.getMethodOrDie(builderClass, "get" + camelCaseName + C6883t.f38150d, new Class[0]);
                this.f37550o = GeneratedMessage.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName + C6883t.f38150d, ByteString.class);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: a */
            public void mo29207a(Builder builder, Object value) {
                if (value instanceof ByteString) {
                    GeneratedMessage.invokeOrDie(this.f37550o, builder, value);
                } else {
                    super.mo29207a(builder, value);
                }
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: b */
            public Object mo29208b(final GeneratedMessage message) {
                return GeneratedMessage.invokeOrDie(this.f37548m, message, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessage.FieldAccessorTable.C6751h, com.google.protobuf.GeneratedMessage.FieldAccessorTable.InterfaceC6744a
            /* renamed from: e */
            public Object mo29211e(Builder builder) {
                return GeneratedMessage.invokeOrDie(this.f37549n, builder, new Object[0]);
            }
        }

        public FieldAccessorTable(final Descriptors.Descriptor descriptor, final String[] camelCaseNames, final Class<? extends GeneratedMessage> messageClass, final Class<? extends Builder> builderClass) {
            this(descriptor, camelCaseNames);
            ensureFieldAccessorsInitialized(messageClass, builderClass);
        }

        /* renamed from: h */
        public static boolean m29203h(Descriptors.FileDescriptor file) {
            return file.getSyntax() == Descriptors.FileDescriptor.Syntax.PROTO2;
        }

        /* renamed from: e */
        public final InterfaceC6744a m29204e(final Descriptors.FieldDescriptor field) {
            if (field.getContainingType() != this.f37496a) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
            if (field.isExtension()) {
                throw new IllegalArgumentException("This type does not have extensions.");
            }
            return this.f37497b[field.getIndex()];
        }

        public FieldAccessorTable ensureFieldAccessorsInitialized(Class<? extends GeneratedMessage> messageClass, Class<? extends Builder> builderClass) {
            if (this.f37500e) {
                return this;
            }
            synchronized (this) {
                if (this.f37500e) {
                    return this;
                }
                int length = this.f37497b.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Descriptors.FieldDescriptor fieldDescriptor = this.f37496a.getFields().get(i);
                    String str = fieldDescriptor.getContainingOneof() != null ? this.f37498c[fieldDescriptor.getContainingOneof().getIndex() + length] : null;
                    if (fieldDescriptor.isRepeated()) {
                        if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                            if (fieldDescriptor.isMapField() && m29206g(fieldDescriptor)) {
                                this.f37497b[i] = new C6745b(fieldDescriptor, this.f37498c[i], messageClass, builderClass);
                            } else {
                                this.f37497b[i] = new C6749f(fieldDescriptor, this.f37498c[i], messageClass, builderClass);
                            }
                        } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                            this.f37497b[i] = new C6747d(fieldDescriptor, this.f37498c[i], messageClass, builderClass);
                        } else {
                            this.f37497b[i] = new C6748e(fieldDescriptor, this.f37498c[i], messageClass, builderClass);
                        }
                    } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        this.f37497b[i] = new C6752i(fieldDescriptor, this.f37498c[i], messageClass, builderClass, str);
                    } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                        this.f37497b[i] = new C6750g(fieldDescriptor, this.f37498c[i], messageClass, builderClass, str);
                    } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.STRING) {
                        this.f37497b[i] = new C6753j(fieldDescriptor, this.f37498c[i], messageClass, builderClass, str);
                    } else {
                        this.f37497b[i] = new C6751h(fieldDescriptor, this.f37498c[i], messageClass, builderClass, str);
                    }
                    i++;
                }
                int length2 = this.f37499d.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f37499d[i2] = new C6746c(this.f37496a, this.f37498c[i2 + length], messageClass, builderClass);
                }
                this.f37500e = true;
                this.f37498c = null;
                return this;
            }
        }

        /* renamed from: f */
        public final C6746c m29205f(final Descriptors.OneofDescriptor oneof) {
            if (oneof.getContainingType() == this.f37496a) {
                return this.f37499d[oneof.getIndex()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        /* renamed from: g */
        public final boolean m29206g(Descriptors.FieldDescriptor field) {
            return true;
        }

        public FieldAccessorTable(final Descriptors.Descriptor descriptor, final String[] camelCaseNames) {
            this.f37496a = descriptor;
            this.f37498c = camelCaseNames;
            this.f37497b = new InterfaceC6744a[descriptor.getFields().size()];
            this.f37499d = new C6746c[descriptor.getOneofs().size()];
            this.f37500e = false;
        }
    }

    public static <ContainingType extends Message, Type> GeneratedExtension<ContainingType, Type> newFileScopedGeneratedExtension(final Class singularType, final Message defaultInstance, final String descriptorOuterClass, final String extensionName) {
        return new GeneratedExtension<>(new C6758d(singularType, descriptorOuterClass, extensionName), singularType, defaultInstance, Extension.ExtensionType.MUTABLE);
    }

    public static <ContainingType extends Message, Type> GeneratedExtension<ContainingType, Type> newMessageScopedGeneratedExtension(final Message scope, final String name, final Class singularType, final Message defaultInstance) {
        return new GeneratedExtension<>(new C6757c(scope, name), singularType, defaultInstance, Extension.ExtensionType.MUTABLE);
    }

    public GeneratedMessage(Builder<?> builder) {
        this.unknownFields = builder.getUnknownFields();
    }

    public static <M extends Message> M parseDelimitedWithIOException(Parser<M> parser, InputStream input, ExtensionRegistryLite extensions) throws IOException {
        try {
            return parser.parseDelimitedFrom(input, extensions);
        } catch (InvalidProtocolBufferException e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, InputStream input, ExtensionRegistryLite extensions) throws IOException {
        try {
            return parser.parseFrom(input, extensions);
        } catch (InvalidProtocolBufferException e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, CodedInputStream input) throws IOException {
        try {
            return parser.parseFrom(input);
        } catch (InvalidProtocolBufferException e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, CodedInputStream input, ExtensionRegistryLite extensions) throws IOException {
        try {
            return parser.parseFrom(input, extensions);
        } catch (InvalidProtocolBufferException e) {
            throw e.unwrapIOException();
        }
    }
}
