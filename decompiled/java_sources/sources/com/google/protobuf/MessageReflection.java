package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.FieldSet;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.WireFormat;
import com.sunia.HTREnginev2.bnd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes6.dex */
public class MessageReflection {

    /* loaded from: classes6.dex */
    public interface MergeTarget {

        /* loaded from: classes6.dex */
        public enum ContainerType {
            MESSAGE,
            EXTENSION_SET
        }

        /* renamed from: a */
        MergeTarget mo29418a(Descriptors.FieldDescriptor descriptor, Message defaultInstance);

        MergeTarget addRepeatedField(Descriptors.FieldDescriptor field, Object value);

        /* renamed from: b */
        Object mo29419b(CodedInputStream input, ExtensionRegistryLite registry, Descriptors.FieldDescriptor descriptor, Message defaultInstance) throws IOException;

        /* renamed from: c */
        void mo29420c(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException;

        MergeTarget clearField(Descriptors.FieldDescriptor field);

        MergeTarget clearOneof(Descriptors.OneofDescriptor oneof);

        /* renamed from: d */
        ExtensionRegistry.ExtensionInfo mo29421d(ExtensionRegistry registry, Descriptors.Descriptor containingType, int fieldNumber);

        /* renamed from: e */
        MergeTarget mo29422e(Descriptors.FieldDescriptor descriptor, Message defaultInstance);

        /* renamed from: f */
        WireFormat.Utf8Validation mo29423f(Descriptors.FieldDescriptor descriptor);

        Object finish();

        /* renamed from: g */
        Object mo29424g(ByteString bytes, ExtensionRegistryLite registry, Descriptors.FieldDescriptor descriptor, Message defaultInstance) throws IOException;

        ContainerType getContainerType();

        Descriptors.Descriptor getDescriptorForType();

        Object getField(Descriptors.FieldDescriptor field);

        Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneof);

        /* renamed from: h */
        Object mo29425h(CodedInputStream input, ExtensionRegistryLite registry, Descriptors.FieldDescriptor descriptor, Message defaultInstance) throws IOException;

        boolean hasField(Descriptors.FieldDescriptor field);

        boolean hasOneof(Descriptors.OneofDescriptor oneof);

        /* renamed from: i */
        void mo29426i(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException;

        /* renamed from: j */
        ExtensionRegistry.ExtensionInfo mo29427j(ExtensionRegistry registry, String name);

        MergeTarget setField(Descriptors.FieldDescriptor field, Object value);

        MergeTarget setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value);
    }

    /* renamed from: com.google.protobuf.MessageReflection$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6799a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37733a;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f37733a = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37733a[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37733a[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.google.protobuf.MessageReflection$b */
    /* loaded from: classes6.dex */
    public static class C6800b implements MergeTarget {

        /* renamed from: a */
        public final Message.Builder f37734a;

        /* renamed from: b */
        public boolean f37735b = true;

        public C6800b(Message.Builder builder) {
            this.f37734a = builder;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: a */
        public MergeTarget mo29418a(Descriptors.FieldDescriptor field, Message defaultInstance) {
            Message message;
            Message.Builder m29428k;
            if (!field.isRepeated() && hasField(field) && (m29428k = m29428k(field)) != null) {
                return new C6800b(m29428k);
            }
            Message.Builder m29429l = m29429l(field, defaultInstance);
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                m29429l.mergeFrom(message);
            }
            return new C6800b(m29429l);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            if (value instanceof MessageLite.Builder) {
                value = ((MessageLite.Builder) value).buildPartial();
            }
            this.f37734a.addRepeatedField(field, value);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: b */
        public Object mo29419b(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance != null ? defaultInstance.newBuilderForType() : this.f37734a.newBuilderForField(field);
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            input.readGroup(field.getNumber(), newBuilderForType, extensionRegistry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: c */
        public void mo29420c(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message.Builder m29429l;
            if (field.isRepeated()) {
                Message.Builder m29429l2 = m29429l(field, defaultInstance);
                input.readGroup(field.getNumber(), m29429l2, extensionRegistry);
                addRepeatedField(field, m29429l2.buildPartial());
                return;
            }
            if (hasField(field)) {
                Message.Builder m29428k = m29428k(field);
                if (m29428k != null) {
                    input.readGroup(field.getNumber(), m29428k, extensionRegistry);
                    return;
                } else {
                    m29429l = m29429l(field, defaultInstance);
                    m29429l.mergeFrom((Message) getField(field));
                }
            } else {
                m29429l = m29429l(field, defaultInstance);
            }
            input.readGroup(field.getNumber(), m29429l, extensionRegistry);
            setField(field, m29429l.buildPartial());
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget clearField(Descriptors.FieldDescriptor field) {
            this.f37734a.clearField(field);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget clearOneof(Descriptors.OneofDescriptor oneof) {
            this.f37734a.clearOneof(oneof);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: d */
        public ExtensionRegistry.ExtensionInfo mo29421d(ExtensionRegistry registry, Descriptors.Descriptor containingType, int fieldNumber) {
            return registry.findImmutableExtensionByNumber(containingType, fieldNumber);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: e */
        public MergeTarget mo29422e(Descriptors.FieldDescriptor field, Message defaultInstance) {
            return new C6800b(defaultInstance != null ? defaultInstance.newBuilderForType() : this.f37734a.newBuilderForField(field));
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: f */
        public WireFormat.Utf8Validation mo29423f(Descriptors.FieldDescriptor descriptor) {
            return descriptor.needsUtf8Check() ? WireFormat.Utf8Validation.STRICT : (descriptor.isRepeated() || !(this.f37734a instanceof GeneratedMessage.Builder)) ? WireFormat.Utf8Validation.LOOSE : WireFormat.Utf8Validation.LAZY;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object finish() {
            return this.f37734a;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: g */
        public Object mo29424g(ByteString bytes, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance != null ? defaultInstance.newBuilderForType() : this.f37734a.newBuilderForField(field);
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            newBuilderForType.mergeFrom(bytes, extensionRegistry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget.ContainerType getContainerType() {
            return MergeTarget.ContainerType.MESSAGE;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.Descriptor getDescriptorForType() {
            return this.f37734a.getDescriptorForType();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object getField(Descriptors.FieldDescriptor field) {
            return this.f37734a.getField(field);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneof) {
            return this.f37734a.getOneofFieldDescriptor(oneof);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: h */
        public Object mo29425h(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance != null ? defaultInstance.newBuilderForType() : this.f37734a.newBuilderForField(field);
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            input.readMessage(newBuilderForType, extensionRegistry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.FieldDescriptor field) {
            return this.f37734a.hasField(field);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasOneof(Descriptors.OneofDescriptor oneof) {
            return this.f37734a.hasOneof(oneof);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: i */
        public void mo29426i(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message.Builder m29429l;
            if (field.isRepeated()) {
                Message.Builder m29429l2 = m29429l(field, defaultInstance);
                input.readMessage(m29429l2, extensionRegistry);
                addRepeatedField(field, m29429l2.buildPartial());
                return;
            }
            if (hasField(field)) {
                Message.Builder m29428k = m29428k(field);
                if (m29428k != null) {
                    input.readMessage(m29428k, extensionRegistry);
                    return;
                } else {
                    m29429l = m29429l(field, defaultInstance);
                    m29429l.mergeFrom((Message) getField(field));
                }
            } else {
                m29429l = m29429l(field, defaultInstance);
            }
            input.readMessage(m29429l, extensionRegistry);
            setField(field, m29429l.buildPartial());
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: j */
        public ExtensionRegistry.ExtensionInfo mo29427j(ExtensionRegistry registry, String name) {
            return registry.findImmutableExtensionByName(name);
        }

        /* renamed from: k */
        public final Message.Builder m29428k(Descriptors.FieldDescriptor field) {
            if (!this.f37735b) {
                return null;
            }
            try {
                return this.f37734a.getFieldBuilder(field);
            } catch (UnsupportedOperationException unused) {
                this.f37735b = false;
                return null;
            }
        }

        /* renamed from: l */
        public final Message.Builder m29429l(Descriptors.FieldDescriptor field, Message defaultInstance) {
            return defaultInstance != null ? defaultInstance.newBuilderForType() : this.f37734a.newBuilderForField(field);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget setField(Descriptors.FieldDescriptor field, Object value) {
            if (field.isRepeated() || !(value instanceof MessageLite.Builder)) {
                this.f37734a.setField(field, value);
                return this;
            }
            if (value != m29428k(field)) {
                this.f37734a.setField(field, ((MessageLite.Builder) value).buildPartial());
            }
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
            if (value instanceof MessageLite.Builder) {
                value = ((MessageLite.Builder) value).buildPartial();
            }
            this.f37734a.setRepeatedField(field, index, value);
            return this;
        }
    }

    /* renamed from: com.google.protobuf.MessageReflection$c */
    /* loaded from: classes6.dex */
    public static class C6801c implements MergeTarget {

        /* renamed from: a */
        public final FieldSet<Descriptors.FieldDescriptor> f37736a;

        public C6801c(FieldSet<Descriptors.FieldDescriptor> extensions) {
            this.f37736a = extensions;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: a */
        public MergeTarget mo29418a(Descriptors.FieldDescriptor descriptor, Message defaultInstance) {
            throw new UnsupportedOperationException("newMergeTargetForField() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            this.f37736a.m29151h(field, value);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: b */
        public Object mo29419b(CodedInputStream input, ExtensionRegistryLite registry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            input.readGroup(field.getNumber(), newBuilderForType, registry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: c */
        public void mo29420c(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            if (field.isRepeated()) {
                Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
                input.readGroup(field.getNumber(), newBuilderForType, extensionRegistry);
                addRepeatedField(field, newBuilderForType.buildPartial());
            } else if (hasField(field)) {
                MessageLite.Builder builder = ((MessageLite) getField(field)).toBuilder();
                input.readGroup(field.getNumber(), builder, extensionRegistry);
                setField(field, builder.buildPartial());
            } else {
                Message.Builder newBuilderForType2 = defaultInstance.newBuilderForType();
                input.readGroup(field.getNumber(), newBuilderForType2, extensionRegistry);
                setField(field, newBuilderForType2.buildPartial());
            }
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget clearField(Descriptors.FieldDescriptor field) {
            this.f37736a.m29153j(field);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget clearOneof(Descriptors.OneofDescriptor oneof) {
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: d */
        public ExtensionRegistry.ExtensionInfo mo29421d(ExtensionRegistry registry, Descriptors.Descriptor containingType, int fieldNumber) {
            return registry.findImmutableExtensionByNumber(containingType, fieldNumber);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: e */
        public MergeTarget mo29422e(Descriptors.FieldDescriptor descriptor, Message defaultInstance) {
            throw new UnsupportedOperationException("newEmptyTargetForField() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: f */
        public WireFormat.Utf8Validation mo29423f(Descriptors.FieldDescriptor descriptor) {
            return descriptor.needsUtf8Check() ? WireFormat.Utf8Validation.STRICT : WireFormat.Utf8Validation.LOOSE;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object finish() {
            throw new UnsupportedOperationException("finish() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: g */
        public Object mo29424g(ByteString bytes, ExtensionRegistryLite registry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            newBuilderForType.mergeFrom(bytes, registry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget.ContainerType getContainerType() {
            return MergeTarget.ContainerType.EXTENSION_SET;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.Descriptor getDescriptorForType() {
            throw new UnsupportedOperationException("getDescriptorForType() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object getField(Descriptors.FieldDescriptor field) {
            return this.f37736a.m29157u(field);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneof) {
            return null;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: h */
        public Object mo29425h(CodedInputStream input, ExtensionRegistryLite registry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            input.readMessage(newBuilderForType, registry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.FieldDescriptor field) {
            return this.f37736a.m29137B(field);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasOneof(Descriptors.OneofDescriptor oneof) {
            return false;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: i */
        public void mo29426i(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            if (field.isRepeated()) {
                Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
                input.readMessage(newBuilderForType, extensionRegistry);
                addRepeatedField(field, newBuilderForType.buildPartial());
            } else if (hasField(field)) {
                MessageLite.Builder builder = ((MessageLite) getField(field)).toBuilder();
                input.readMessage(builder, extensionRegistry);
                setField(field, builder.buildPartial());
            } else {
                Message.Builder newBuilderForType2 = defaultInstance.newBuilderForType();
                input.readMessage(newBuilderForType2, extensionRegistry);
                setField(field, newBuilderForType2.buildPartial());
            }
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: j */
        public ExtensionRegistry.ExtensionInfo mo29427j(ExtensionRegistry registry, String name) {
            return registry.findImmutableExtensionByName(name);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget setField(Descriptors.FieldDescriptor field, Object value) {
            this.f37736a.m29145P(field, value);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
            this.f37736a.m29146Q(field, index, value);
            return this;
        }
    }

    /* renamed from: com.google.protobuf.MessageReflection$d */
    /* loaded from: classes6.dex */
    public static class C6802d implements MergeTarget {

        /* renamed from: a */
        public final FieldSet.C6740b<Descriptors.FieldDescriptor> f37737a;

        public C6802d(FieldSet.C6740b<Descriptors.FieldDescriptor> extensions) {
            this.f37737a = extensions;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: a */
        public MergeTarget mo29418a(Descriptors.FieldDescriptor descriptor, Message defaultInstance) {
            throw new UnsupportedOperationException("newMergeTargetForField() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        @bnd
        public MergeTarget addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            this.f37737a.m29168a(field, value);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: b */
        public Object mo29419b(CodedInputStream input, ExtensionRegistryLite registry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            input.readGroup(field.getNumber(), newBuilderForType, registry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: c */
        public void mo29420c(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            MessageLite.Builder builder;
            if (field.isRepeated()) {
                Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
                input.readGroup(field.getNumber(), newBuilderForType, extensionRegistry);
                addRepeatedField(field, newBuilderForType.buildPartial());
            } else if (!hasField(field)) {
                Message.Builder newBuilderForType2 = defaultInstance.newBuilderForType();
                input.readGroup(field.getNumber(), newBuilderForType2, extensionRegistry);
                setField(field, newBuilderForType2);
            } else {
                Object m29176j = this.f37737a.m29176j(field);
                if (m29176j instanceof MessageLite.Builder) {
                    builder = (MessageLite.Builder) m29176j;
                } else {
                    builder = ((MessageLite) m29176j).toBuilder();
                    this.f37737a.m29184v(field, builder);
                }
                input.readGroup(field.getNumber(), builder, extensionRegistry);
            }
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        @bnd
        public MergeTarget clearField(Descriptors.FieldDescriptor field) {
            this.f37737a.m29172e(field);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        @bnd
        public MergeTarget clearOneof(Descriptors.OneofDescriptor oneof) {
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: d */
        public ExtensionRegistry.ExtensionInfo mo29421d(ExtensionRegistry registry, Descriptors.Descriptor containingType, int fieldNumber) {
            return registry.findImmutableExtensionByNumber(containingType, fieldNumber);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: e */
        public MergeTarget mo29422e(Descriptors.FieldDescriptor descriptor, Message defaultInstance) {
            throw new UnsupportedOperationException("newEmptyTargetForField() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: f */
        public WireFormat.Utf8Validation mo29423f(Descriptors.FieldDescriptor descriptor) {
            return descriptor.needsUtf8Check() ? WireFormat.Utf8Validation.STRICT : WireFormat.Utf8Validation.LOOSE;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object finish() {
            throw new UnsupportedOperationException("finish() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: g */
        public Object mo29424g(ByteString bytes, ExtensionRegistryLite registry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            newBuilderForType.mergeFrom(bytes, registry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget.ContainerType getContainerType() {
            return MergeTarget.ContainerType.EXTENSION_SET;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.Descriptor getDescriptorForType() {
            throw new UnsupportedOperationException("getDescriptorForType() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object getField(Descriptors.FieldDescriptor field) {
            return this.f37737a.m29175i(field);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneof) {
            return null;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: h */
        public Object mo29425h(CodedInputStream input, ExtensionRegistryLite registry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            Message message;
            Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
            if (!field.isRepeated() && (message = (Message) getField(field)) != null) {
                newBuilderForType.mergeFrom(message);
            }
            input.readMessage(newBuilderForType, registry);
            return newBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.FieldDescriptor field) {
            return this.f37737a.m29180n(field);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasOneof(Descriptors.OneofDescriptor oneof) {
            return false;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: i */
        public void mo29426i(CodedInputStream input, ExtensionRegistryLite extensionRegistry, Descriptors.FieldDescriptor field, Message defaultInstance) throws IOException {
            MessageLite.Builder builder;
            if (field.isRepeated()) {
                Message.Builder newBuilderForType = defaultInstance.newBuilderForType();
                input.readMessage(newBuilderForType, extensionRegistry);
                addRepeatedField(field, newBuilderForType.buildPartial());
            } else if (!hasField(field)) {
                Message.Builder newBuilderForType2 = defaultInstance.newBuilderForType();
                input.readMessage(newBuilderForType2, extensionRegistry);
                setField(field, newBuilderForType2);
            } else {
                Object m29176j = this.f37737a.m29176j(field);
                if (m29176j instanceof MessageLite.Builder) {
                    builder = (MessageLite.Builder) m29176j;
                } else {
                    builder = ((MessageLite) m29176j).toBuilder();
                    this.f37737a.m29184v(field, builder);
                }
                input.readMessage(builder, extensionRegistry);
            }
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        /* renamed from: j */
        public ExtensionRegistry.ExtensionInfo mo29427j(ExtensionRegistry registry, String name) {
            return registry.findImmutableExtensionByName(name);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        @bnd
        public MergeTarget setField(Descriptors.FieldDescriptor field, Object value) {
            this.f37737a.m29184v(field, value);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        @bnd
        public MergeTarget setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
            this.f37737a.m29185w(field, index, value);
            return this;
        }
    }

    /* renamed from: a */
    public static String m29406a(List<String> parts) {
        StringBuilder sb = new StringBuilder();
        for (String str : parts) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static void m29407b(CodedInputStream input, ExtensionRegistry.ExtensionInfo extension, ExtensionRegistryLite extensionRegistry, MergeTarget target) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = extension.descriptor;
        target.setField(fieldDescriptor, target.mo29425h(input, extensionRegistry, fieldDescriptor, extension.defaultInstance));
    }

    /* renamed from: c */
    public static List<String> m29408c(final MessageOrBuilder message) {
        ArrayList arrayList = new ArrayList();
        m29409d(message, "", arrayList);
        return arrayList;
    }

    /* renamed from: d */
    public static void m29409d(final MessageOrBuilder message, final String prefix, final List<String> results) {
        for (Descriptors.FieldDescriptor fieldDescriptor : message.getDescriptorForType().getFields()) {
            if (fieldDescriptor.isRequired() && !message.hasField(fieldDescriptor)) {
                results.add(prefix + fieldDescriptor.getName());
            }
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : message.getAllFields().entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            if (key.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (key.isRepeated()) {
                    Iterator it2 = ((List) value).iterator();
                    int i = 0;
                    while (it2.hasNext()) {
                        m29409d((MessageOrBuilder) it2.next(), m29416k(prefix, key, i), results);
                        i++;
                    }
                } else if (message.hasField(key)) {
                    m29409d((MessageOrBuilder) value, m29416k(prefix, key, -1), results);
                }
            }
        }
    }

    /* renamed from: e */
    public static int m29410e(Message message, Map<Descriptors.FieldDescriptor, Object> fields) {
        boolean messageSetWireFormat = message.getDescriptorForType().getOptions().getMessageSetWireFormat();
        int i = 0;
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : fields.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            i += (messageSetWireFormat && key.isExtension() && key.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && !key.isRepeated()) ? CodedOutputStream.computeMessageSetExtensionSize(key.getNumber(), (Message) value) : FieldSet.m29135q(key, value);
        }
        UnknownFieldSet unknownFields = message.getUnknownFields();
        return i + (messageSetWireFormat ? unknownFields.getSerializedSizeAsMessageSet() : unknownFields.getSerializedSize());
    }

    /* renamed from: f */
    public static boolean m29411f(MessageOrBuilder message) {
        for (Descriptors.FieldDescriptor fieldDescriptor : message.getDescriptorForType().getFields()) {
            if (fieldDescriptor.isRequired() && !message.hasField(fieldDescriptor)) {
                return false;
            }
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : message.getAllFields().entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            if (key.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (key.isRepeated()) {
                    Iterator it2 = ((List) entry.getValue()).iterator();
                    while (it2.hasNext()) {
                        if (!((Message) it2.next()).isInitialized()) {
                            return false;
                        }
                    }
                } else if (!((Message) entry.getValue()).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m29412g(com.google.protobuf.CodedInputStream r7, com.google.protobuf.UnknownFieldSet.Builder r8, com.google.protobuf.ExtensionRegistryLite r9, com.google.protobuf.Descriptors.Descriptor r10, com.google.protobuf.MessageReflection.MergeTarget r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageReflection.m29412g(com.google.protobuf.CodedInputStream, com.google.protobuf.UnknownFieldSet$Builder, com.google.protobuf.ExtensionRegistryLite, com.google.protobuf.Descriptors$Descriptor, com.google.protobuf.MessageReflection$MergeTarget, int):boolean");
    }

    /* renamed from: h */
    public static void m29413h(Message.Builder target, UnknownFieldSet.Builder unknownFields, CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        int readTag;
        C6800b c6800b = new C6800b(target);
        Descriptors.Descriptor descriptorForType = target.getDescriptorForType();
        do {
            readTag = input.readTag();
            if (readTag == 0) {
                return;
            }
        } while (m29412g(input, unknownFields, extensionRegistry, descriptorForType, c6800b, readTag));
    }

    /* renamed from: i */
    public static void m29414i(ByteString rawBytes, ExtensionRegistry.ExtensionInfo extension, ExtensionRegistryLite extensionRegistry, MergeTarget target) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = extension.descriptor;
        if (target.hasField(fieldDescriptor) || ExtensionRegistryLite.isEagerlyParseMessageSets()) {
            target.setField(fieldDescriptor, target.mo29424g(rawBytes, extensionRegistry, fieldDescriptor, extension.defaultInstance));
        } else {
            target.setField(fieldDescriptor, new LazyField(extension.defaultInstance, extensionRegistry, rawBytes));
        }
    }

    /* renamed from: j */
    public static void m29415j(CodedInputStream input, UnknownFieldSet.Builder unknownFields, ExtensionRegistryLite extensionRegistry, Descriptors.Descriptor type, MergeTarget target) throws IOException {
        int i = 0;
        ByteString byteString = null;
        ExtensionRegistry.ExtensionInfo extensionInfo = null;
        while (true) {
            int readTag = input.readTag();
            if (readTag == 0) {
                break;
            }
            if (readTag == WireFormat.f37970m) {
                i = input.readUInt32();
                if (i != 0 && (extensionRegistry instanceof ExtensionRegistry)) {
                    extensionInfo = target.mo29421d((ExtensionRegistry) extensionRegistry, type, i);
                }
            } else if (readTag == WireFormat.f37971n) {
                if (i == 0 || extensionInfo == null || !ExtensionRegistryLite.isEagerlyParseMessageSets()) {
                    byteString = input.readBytes();
                } else {
                    m29407b(input, extensionInfo, extensionRegistry, target);
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
        if (extensionInfo != null) {
            m29414i(byteString, extensionInfo, extensionRegistry, target);
        } else if (unknownFields != null) {
            unknownFields.mergeField(i, UnknownFieldSet.Field.newBuilder().addLengthDelimited(byteString).build());
        }
    }

    /* renamed from: k */
    public static String m29416k(final String prefix, final Descriptors.FieldDescriptor field, final int index) {
        StringBuilder sb = new StringBuilder(prefix);
        if (field.isExtension()) {
            sb.append('(');
            sb.append(field.getFullName());
            sb.append(')');
        } else {
            sb.append(field.getName());
        }
        if (index != -1) {
            sb.append('[');
            sb.append(index);
            sb.append(']');
        }
        sb.append('.');
        return sb.toString();
    }

    /* renamed from: l */
    public static void m29417l(Message message, Map<Descriptors.FieldDescriptor, Object> fields, CodedOutputStream output, boolean alwaysWriteRequiredFields) throws IOException {
        boolean messageSetWireFormat = message.getDescriptorForType().getOptions().getMessageSetWireFormat();
        if (alwaysWriteRequiredFields) {
            TreeMap treeMap = new TreeMap(fields);
            for (Descriptors.FieldDescriptor fieldDescriptor : message.getDescriptorForType().getFields()) {
                if (fieldDescriptor.isRequired() && !treeMap.containsKey(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, message.getField(fieldDescriptor));
                }
            }
            fields = treeMap;
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : fields.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            if (messageSetWireFormat && key.isExtension() && key.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && !key.isRepeated()) {
                output.writeMessageSetExtension(key.getNumber(), (Message) value);
            } else {
                FieldSet.m29122U(key, value, output);
            }
        }
        UnknownFieldSet unknownFields = message.getUnknownFields();
        if (messageSetWireFormat) {
            unknownFields.writeAsMessageSetTo(output);
        } else {
            unknownFields.writeTo(output);
        }
    }
}
