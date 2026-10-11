package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.DynamicMessage;
import com.google.protobuf.FieldSet;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.LazyField;
import com.google.protobuf.Message;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.WireFormat;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.dun;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes6.dex */
public abstract class GeneratedMessageV3 extends AbstractMessage implements Serializable {
    protected static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    protected UnknownFieldSet unknownFields;

    /* loaded from: classes6.dex */
    public static abstract class Builder<BuilderT extends Builder<BuilderT>> extends AbstractMessage.Builder<BuilderT> {

        /* renamed from: e */
        public BuilderParent f37592e;

        /* renamed from: f */
        public Builder<BuilderT>.C6764a f37593f;

        /* renamed from: g */
        public boolean f37594g;

        /* renamed from: h */
        public Object f37595h;

        /* renamed from: com.google.protobuf.GeneratedMessageV3$Builder$a */
        /* loaded from: classes6.dex */
        public class C6764a implements BuilderParent {
            public C6764a() {
            }

            @Override // com.google.protobuf.AbstractMessage.BuilderParent
            public void markDirty() {
                Builder.this.onChanged();
            }

            public /* synthetic */ C6764a(Builder builder, C6777a c6777a) {
                this();
            }
        }

        public Builder() {
            this(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public Map<Descriptors.FieldDescriptor, Object> m29277f() {
            TreeMap treeMap = new TreeMap();
            List<Descriptors.FieldDescriptor> fields = internalGetFieldAccessorTable().f37602a.getFields();
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

        @Override // com.google.protobuf.AbstractMessage.Builder
        /* renamed from: c */
        void mo28602c() {
            this.f37592e = null;
        }

        /* renamed from: g */
        public final BuilderT m29278g(final UnknownFieldSet unknownFields) {
            this.f37595h = unknownFields;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            return Collections.unmodifiableMap(m29277f());
        }

        public Descriptors.Descriptor getDescriptorForType() {
            return internalGetFieldAccessorTable().f37602a;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getField(final Descriptors.FieldDescriptor field) {
            Object mo29292c = internalGetFieldAccessorTable().m29288d(field).mo29292c(this);
            return field.isRepeated() ? Collections.unmodifiableList((List) mo29292c) : mo29292c;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(final Descriptors.FieldDescriptor field) {
            return internalGetFieldAccessorTable().m29288d(field).mo29304o(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(final Descriptors.OneofDescriptor oneof) {
            return internalGetFieldAccessorTable().m29289e(oneof).mo29311c(this);
        }

        public BuilderParent getParentForChildren() {
            if (this.f37593f == null) {
                this.f37593f = new C6764a(this, null);
            }
            return this.f37593f;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(final Descriptors.FieldDescriptor field, final int index) {
            return internalGetFieldAccessorTable().m29288d(field).mo29298i(this, index);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(final Descriptors.FieldDescriptor field, int index) {
            return internalGetFieldAccessorTable().m29288d(field).mo29303n(this, index);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(final Descriptors.FieldDescriptor field) {
            return internalGetFieldAccessorTable().m29288d(field).mo29300k(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder
        public UnknownFieldSet.Builder getUnknownFieldSetBuilder() {
            Object obj = this.f37595h;
            if (obj instanceof UnknownFieldSet) {
                this.f37595h = ((UnknownFieldSet) obj).toBuilder();
            }
            onChanged();
            return (UnknownFieldSet.Builder) this.f37595h;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            Object obj = this.f37595h;
            return obj instanceof UnknownFieldSet ? (UnknownFieldSet) obj : ((UnknownFieldSet.Builder) obj).buildPartial();
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public boolean hasField(final Descriptors.FieldDescriptor field) {
            return internalGetFieldAccessorTable().m29288d(field).mo29294e(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageOrBuilder
        public boolean hasOneof(final Descriptors.OneofDescriptor oneof) {
            return internalGetFieldAccessorTable().m29289e(oneof).mo29313e(this);
        }

        public abstract FieldAccessorTable internalGetFieldAccessorTable();

        public MapField internalGetMapField(int fieldNumber) {
            throw new IllegalArgumentException("No map fields found in " + getClass().getName());
        }

        public MapField internalGetMutableMapField(int fieldNumber) {
            throw new IllegalArgumentException("No map fields found in " + getClass().getName());
        }

        public boolean isClean() {
            return this.f37594g;
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
            this.f37594g = true;
        }

        public final void mergeUnknownLengthDelimitedField(int number, ByteString bytes) {
            getUnknownFieldSetBuilder().mergeLengthDelimitedField(number, bytes);
        }

        public final void mergeUnknownVarintField(int number, int value) {
            getUnknownFieldSetBuilder().mergeVarintField(number, value);
        }

        @Override // com.google.protobuf.Message.Builder
        public Message.Builder newBuilderForField(final Descriptors.FieldDescriptor field) {
            return internalGetFieldAccessorTable().m29288d(field).newBuilder();
        }

        public void onBuilt() {
            if (this.f37592e != null) {
                markClean();
            }
        }

        public final void onChanged() {
            BuilderParent builderParent;
            if (!this.f37594g || (builderParent = this.f37592e) == null) {
                return;
            }
            builderParent.markDirty();
            this.f37594g = false;
        }

        public boolean parseUnknownField(CodedInputStream input, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
            return input.m28642g() ? input.skipField(tag) : getUnknownFieldSetBuilder().mergeFieldFrom(tag, input);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder
        public void setUnknownFieldSetBuilder(UnknownFieldSet.Builder builder) {
            this.f37595h = builder;
            onChanged();
        }

        public BuilderT setUnknownFieldsProto3(final UnknownFieldSet unknownFields) {
            return m29278g(unknownFields);
        }

        public Builder(BuilderParent builderParent) {
            this.f37595h = UnknownFieldSet.getDefaultInstance();
            this.f37592e = builderParent;
        }

        public BuilderT addRepeatedField(final Descriptors.FieldDescriptor field, final Object value) {
            internalGetFieldAccessorTable().m29288d(field).mo29296g(this, value);
            return this;
        }

        public BuilderT clearField(final Descriptors.FieldDescriptor field) {
            internalGetFieldAccessorTable().m29288d(field).mo29290a(this);
            return this;
        }

        public BuilderT setField(final Descriptors.FieldDescriptor field, final Object value) {
            internalGetFieldAccessorTable().m29288d(field).mo29299j(this, value);
            return this;
        }

        public BuilderT setRepeatedField(final Descriptors.FieldDescriptor field, final int index, final Object value) {
            internalGetFieldAccessorTable().m29288d(field).mo29297h(this, index, value);
            return this;
        }

        public BuilderT setUnknownFields(final UnknownFieldSet unknownFields) {
            return m29278g(unknownFields);
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public BuilderT clearOneof(final Descriptors.OneofDescriptor oneof) {
            internalGetFieldAccessorTable().m29289e(oneof).mo29309a(this);
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public BuilderT mergeUnknownFields(final UnknownFieldSet unknownFields) {
            if (UnknownFieldSet.getDefaultInstance().equals(unknownFields)) {
                return this;
            }
            if (UnknownFieldSet.getDefaultInstance().equals(this.f37595h)) {
                this.f37595h = unknownFields;
                onChanged();
                return this;
            }
            getUnknownFieldSetBuilder().mergeFrom(unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderT clear() {
            this.f37595h = UnknownFieldSet.getDefaultInstance();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public BuilderT mo72165clone() {
            BuilderT buildert = (BuilderT) getDefaultInstanceForType().newBuilderForType();
            buildert.mergeFrom(buildPartial());
            return buildert;
        }
    }

    /* loaded from: classes6.dex */
    public interface BuilderParent extends AbstractMessage.BuilderParent {
    }

    /* loaded from: classes6.dex */
    public static abstract class ExtendableBuilder<MessageT extends ExtendableMessage<MessageT>, BuilderT extends ExtendableBuilder<MessageT, BuilderT>> extends Builder<BuilderT> implements ExtendableMessageOrBuilder<MessageT> {

        /* renamed from: i */
        public FieldSet.C6740b<Descriptors.FieldDescriptor> f37597i;

        public ExtendableBuilder() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public FieldSet<Descriptors.FieldDescriptor> m29280i() {
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            return c6740b == null ? FieldSet.m29136s() : c6740b.m29171d();
        }

        /* renamed from: j */
        private void m29281j() {
            if (this.f37597i == null) {
                this.f37597i = FieldSet.m29117M();
            }
        }

        /* renamed from: l */
        private void m29282l(final Descriptors.FieldDescriptor field) {
            if (field.getContainingType() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* renamed from: m */
        private void m29283m(final Extension<MessageT, ?> extension) {
            if (extension.getDescriptor().getContainingType() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("Extension is for type \"" + extension.getDescriptor().getContainingType().getFullName() + "\" which does not match message type \"" + getDescriptorForType().getFullName() + "\".");
        }

        public final <T> BuilderT addExtension(final ExtensionLite<MessageT, List<T>> extensionLite, final T value) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            m29283m(checkNotLite);
            m29281j();
            this.f37597i.m29168a(checkNotLite.getDescriptor(), checkNotLite.singularToReflectionType(value));
            onChanged();
            return this;
        }

        public final <T> BuilderT clearExtension(final ExtensionLite<MessageT, T> extensionLite) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            m29283m(checkNotLite);
            m29281j();
            this.f37597i.m29172e(checkNotLite.getDescriptor());
            onChanged();
            return this;
        }

        public boolean extensionsAreInitialized() {
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            return c6740b == null || c6740b.m29181o();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map m29277f = m29277f();
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            if (c6740b != null) {
                m29277f.putAll(c6740b.m29174h());
            }
            return Collections.unmodifiableMap(m29277f);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(ExtensionLite<MessageT, T> extensionLite) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            m29283m(checkNotLite);
            Descriptors.FieldDescriptor descriptor = checkNotLite.getDescriptor();
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            Object m29175i = c6740b == null ? null : c6740b.m29175i(descriptor);
            if (m29175i == null) {
                if (descriptor.isRepeated()) {
                    return (T) Collections.emptyList();
                }
                if (descriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    return (T) checkNotLite.getMessageDefaultInstance();
                }
                return (T) checkNotLite.fromReflectionType(descriptor.getDefaultValue());
            }
            return (T) checkNotLite.fromReflectionType(m29175i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> int getExtensionCount(final ExtensionLite<MessageT, List<T>> extensionLite) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            m29283m(checkNotLite);
            Descriptors.FieldDescriptor descriptor = checkNotLite.getDescriptor();
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            if (c6740b == null) {
                return 0;
            }
            return c6740b.m29179m(descriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageOrBuilder
        public Object getField(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getField(field);
            }
            m29282l(field);
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            Object m29175i = c6740b == null ? null : c6740b.m29175i(field);
            return m29175i == null ? field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE ? DynamicMessage.getDefaultInstance(field.getMessageType()) : field.getDefaultValue() : m29175i;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getFieldBuilder(field);
            }
            m29282l(field);
            if (field.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
            m29281j();
            Object m29176j = this.f37597i.m29176j(field);
            if (m29176j == null) {
                DynamicMessage.Builder newBuilder = DynamicMessage.newBuilder(field.getMessageType());
                this.f37597i.m29184v(field, newBuilder);
                onChanged();
                return newBuilder;
            }
            if (m29176j instanceof Message.Builder) {
                return (Message.Builder) m29176j;
            }
            if (!(m29176j instanceof Message)) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Message.Builder builder = ((Message) m29176j).toBuilder();
            this.f37597i.m29184v(field, builder);
            onChanged();
            return builder;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(final Descriptors.FieldDescriptor field, final int index) {
            if (!field.isExtension()) {
                return super.getRepeatedField(field, index);
            }
            m29282l(field);
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            if (c6740b != null) {
                return c6740b.m29177k(field, index);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(final Descriptors.FieldDescriptor field, final int index) {
            if (!field.isExtension()) {
                return super.getRepeatedFieldBuilder(field, index);
            }
            m29282l(field);
            m29281j();
            if (field.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Object m29178l = this.f37597i.m29178l(field, index);
            if (m29178l instanceof Message.Builder) {
                return (Message.Builder) m29178l;
            }
            if (!(m29178l instanceof Message)) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Message.Builder builder = ((Message) m29178l).toBuilder();
            this.f37597i.m29185w(field, index, builder);
            onChanged();
            return builder;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getRepeatedFieldCount(field);
            }
            m29282l(field);
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            if (c6740b == null) {
                return 0;
            }
            return c6740b.m29179m(field);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> boolean hasExtension(final ExtensionLite<MessageT, T> extensionLite) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            m29283m(checkNotLite);
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            return c6740b != null && c6740b.m29180n(checkNotLite.getDescriptor());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageOrBuilder
        public boolean hasField(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.hasField(field);
            }
            m29282l(field);
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            return c6740b != null && c6740b.m29180n(field);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return super.isInitialized() && extensionsAreInitialized();
        }

        /* renamed from: k */
        public void m29284k(FieldSet<Descriptors.FieldDescriptor> extensions) {
            this.f37597i = FieldSet.C6740b.m29163g(extensions);
        }

        public final void mergeExtensionFields(final ExtendableMessage<?> other) {
            if (((ExtendableMessage) other).extensions != null) {
                m29281j();
                this.f37597i.m29182p(((ExtendableMessage) other).extensions);
                onChanged();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Message.Builder newBuilderForField(final Descriptors.FieldDescriptor field) {
            return field.isExtension() ? DynamicMessage.newBuilder(field.getMessageType()) : super.newBuilderForField(field);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        public boolean parseUnknownField(CodedInputStream input, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
            m29281j();
            return MessageReflection.m29412g(input, input.m28642g() ? null : getUnknownFieldSetBuilder(), extensionRegistry, getDescriptorForType(), new MessageReflection.C6802d(this.f37597i), tag);
        }

        public final <T> BuilderT setExtension(final ExtensionLite<MessageT, T> extensionLite, final T value) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            m29283m(checkNotLite);
            m29281j();
            this.f37597i.m29184v(checkNotLite.getDescriptor(), checkNotLite.toReflectionType(value));
            onChanged();
            return this;
        }

        public ExtendableBuilder(BuilderParent parent) {
            super(parent);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public BuilderT addRepeatedField(final Descriptors.FieldDescriptor field, final Object value) {
            if (field.isExtension()) {
                m29282l(field);
                m29281j();
                this.f37597i.m29168a(field, value);
                onChanged();
                return this;
            }
            return (BuilderT) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public BuilderT clearField(final Descriptors.FieldDescriptor field) {
            if (field.isExtension()) {
                m29282l(field);
                m29281j();
                this.f37597i.m29172e(field);
                onChanged();
                return this;
            }
            return (BuilderT) super.clearField(field);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public BuilderT setField(final Descriptors.FieldDescriptor field, final Object value) {
            if (field.isExtension()) {
                m29282l(field);
                m29281j();
                this.f37597i.m29184v(field, value);
                onChanged();
                return this;
            }
            return (BuilderT) super.setField(field, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public BuilderT setRepeatedField(final Descriptors.FieldDescriptor field, final int index, final Object value) {
            if (field.isExtension()) {
                m29282l(field);
                m29281j();
                this.f37597i.m29185w(field, index, value);
                onChanged();
                return this;
            }
            return (BuilderT) super.setRepeatedField(field, index, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> boolean hasExtension(final Extension<MessageT, T> extension) {
            return hasExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderT clear() {
            this.f37597i = null;
            return (BuilderT) super.clear();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> int getExtensionCount(final Extension<MessageT, List<T>> extension) {
            return getExtensionCount((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> boolean hasExtension(final GeneratedMessage.GeneratedExtension<MessageT, T> extension) {
            return hasExtension((ExtensionLite) extension);
        }

        public final <T> BuilderT clearExtension(final Extension<MessageT, T> extension) {
            return clearExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> int getExtensionCount(final GeneratedMessage.GeneratedExtension<MessageT, List<T>> extension) {
            return getExtensionCount((ExtensionLite) extension);
        }

        public final <T> BuilderT addExtension(final Extension<MessageT, List<T>> extension, final T value) {
            return addExtension(extension, (Extension<MessageT, List<T>>) value);
        }

        public <T> BuilderT clearExtension(final GeneratedMessage.GeneratedExtension<MessageT, T> extension) {
            return clearExtension((ExtensionLite) extension);
        }

        public final <T> BuilderT setExtension(final ExtensionLite<MessageT, List<T>> extensionLite, final int index, final T value) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            m29283m(checkNotLite);
            m29281j();
            this.f37597i.m29185w(checkNotLite.getDescriptor(), index, checkNotLite.singularToReflectionType(value));
            onChanged();
            return this;
        }

        public <T> BuilderT addExtension(final GeneratedMessage.GeneratedExtension<MessageT, List<T>> extension, final T value) {
            return addExtension((ExtensionLite<MessageT, List<GeneratedMessage.GeneratedExtension<MessageT, List<T>>>>) extension, (GeneratedMessage.GeneratedExtension<MessageT, List<T>>) value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(ExtensionLite<MessageT, List<T>> extensionLite, int i) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            m29283m(checkNotLite);
            Descriptors.FieldDescriptor descriptor = checkNotLite.getDescriptor();
            FieldSet.C6740b<Descriptors.FieldDescriptor> c6740b = this.f37597i;
            if (c6740b != null) {
                return (T) checkNotLite.singularFromReflectionType(c6740b.m29177k(descriptor, i));
            }
            throw new IndexOutOfBoundsException();
        }

        public final <T> BuilderT setExtension(final Extension<MessageT, T> extension, final T value) {
            return setExtension(extension, (Extension<MessageT, T>) value);
        }

        public <T> BuilderT setExtension(final GeneratedMessage.GeneratedExtension<MessageT, T> extension, final T value) {
            return setExtension((ExtensionLite<MessageT, GeneratedMessage.GeneratedExtension<MessageT, T>>) extension, (GeneratedMessage.GeneratedExtension<MessageT, T>) value);
        }

        public final <T> BuilderT setExtension(final Extension<MessageT, List<T>> extension, final int index, final T value) {
            return setExtension((ExtensionLite<MessageT, List<int>>) extension, index, (int) value);
        }

        public <T> BuilderT setExtension(final GeneratedMessage.GeneratedExtension<MessageT, List<T>> extension, final int index, final T value) {
            return setExtension((ExtensionLite<MessageT, List<int>>) extension, index, (int) value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(Extension<MessageT, T> extension) {
            return (T) getExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(GeneratedMessage.GeneratedExtension<MessageT, T> generatedExtension) {
            return (T) getExtension((ExtensionLite) generatedExtension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(Extension<MessageT, List<T>> extension, int i) {
            return (T) getExtension((ExtensionLite) extension, i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(GeneratedMessage.GeneratedExtension<MessageT, List<T>> generatedExtension, int i) {
            return (T) getExtension((ExtensionLite) generatedExtension, i);
        }
    }

    /* loaded from: classes6.dex */
    public interface ExtendableMessageOrBuilder<MessageT extends ExtendableMessage<MessageT>> extends MessageOrBuilder {
        @Override // com.google.protobuf.MessageOrBuilder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        Message getDefaultInstanceForType();

        <T> T getExtension(Extension<MessageT, T> extension);

        <T> T getExtension(Extension<MessageT, List<T>> extension, int index);

        <T> T getExtension(ExtensionLite<MessageT, T> extension);

        <T> T getExtension(ExtensionLite<MessageT, List<T>> extension, int index);

        <T> T getExtension(GeneratedMessage.GeneratedExtension<MessageT, T> extension);

        <T> T getExtension(GeneratedMessage.GeneratedExtension<MessageT, List<T>> extension, int index);

        <T> int getExtensionCount(Extension<MessageT, List<T>> extension);

        <T> int getExtensionCount(ExtensionLite<MessageT, List<T>> extension);

        <T> int getExtensionCount(GeneratedMessage.GeneratedExtension<MessageT, List<T>> extension);

        <T> boolean hasExtension(Extension<MessageT, T> extension);

        <T> boolean hasExtension(ExtensionLite<MessageT, T> extension);

        <T> boolean hasExtension(GeneratedMessage.GeneratedExtension<MessageT, T> extension);
    }

    /* loaded from: classes6.dex */
    public static final class UnusedPrivateParameter {

        /* renamed from: a */
        public static final UnusedPrivateParameter f37659a = new UnusedPrivateParameter();
    }

    /* renamed from: com.google.protobuf.GeneratedMessageV3$a */
    /* loaded from: classes6.dex */
    public class C6777a implements BuilderParent {

        /* renamed from: a */
        public final /* synthetic */ AbstractMessage.BuilderParent f37660a;

        public C6777a(final AbstractMessage.BuilderParent val$parent) {
            this.f37660a = val$parent;
        }

        @Override // com.google.protobuf.AbstractMessage.BuilderParent
        public void markDirty() {
            this.f37660a.markDirty();
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageV3$b */
    /* loaded from: classes6.dex */
    public interface InterfaceC6778b {
        Descriptors.FieldDescriptor getDescriptor();
    }

    public GeneratedMessageV3() {
        this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }

    public static boolean canUseUnsafe() {
        return dun.m53730U() && dun.m53731V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageT extends ExtendableMessage<MessageT>, T> Extension<MessageT, T> checkNotLite(ExtensionLite<MessageT, T> extension) {
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

    public static <T> Internal.ProtobufList<T> emptyList(Class<T> elementType) {
        return C6887x.m30413b();
    }

    public static Internal.LongList emptyLongList() {
        return C6879p.m30299d();
    }

    public static void enableAlwaysUseFieldBuildersForTesting() {
        setAlwaysUseFieldBuildersForTesting(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<Descriptors.FieldDescriptor, Object> getAllFieldsMutable(boolean getBytesForString) {
        TreeMap treeMap = new TreeMap();
        List<Descriptors.FieldDescriptor> fields = internalGetFieldAccessorTable().f37602a.getFields();
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
    public static java.lang.reflect.Method getMethodOrDie(final Class<?> clazz, final String name, final Class<?>... params) {
        try {
            return clazz.getMethod(name, params);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Generated message class \"" + clazz.getName() + "\" missing method \"" + name + "\".", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @bnd
    public static Object invokeOrDie(final java.lang.reflect.Method method, final Object object, final Object... params) {
        try {
            return method.invoke(object, params);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new IllegalStateException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static boolean isStringEmpty(final Object value) {
        return value instanceof String ? ((String) value).isEmpty() : ((ByteString) value).isEmpty();
    }

    public static <ListT extends Internal.ProtobufList<?>> ListT makeMutableCopy(ListT listt) {
        return (ListT) makeMutableCopy(listt, 0);
    }

    private static <V> void maybeSerializeBooleanEntryTo(CodedOutputStream out, Map<Boolean, V> m, MapEntry<Boolean, V> defaultEntry, int fieldNumber, boolean key) throws IOException {
        if (m.containsKey(Boolean.valueOf(key))) {
            out.writeMessage(fieldNumber, defaultEntry.newBuilderForType().setKey(Boolean.valueOf(key)).setValue(m.get(Boolean.valueOf(key))).build());
        }
    }

    public static Internal.IntList mutableCopy(Internal.IntList list) {
        return (Internal.IntList) makeMutableCopy(list);
    }

    public static Internal.BooleanList newBooleanList() {
        return new C6867e();
    }

    public static Internal.DoubleList newDoubleList() {
        return new C6872i();
    }

    public static Internal.FloatList newFloatList() {
        return new C6876m();
    }

    public static Internal.IntList newIntList() {
        return new C6877n();
    }

    public static Internal.LongList newLongList() {
        return new C6879p();
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

    public static <V> void serializeBooleanMapTo(CodedOutputStream out, MapField<Boolean, V> field, MapEntry<Boolean, V> defaultEntry, int fieldNumber) throws IOException {
        Map<Boolean, V> map = field.getMap();
        if (!out.m28692L()) {
            serializeMapTo(out, map, defaultEntry, fieldNumber);
        } else {
            maybeSerializeBooleanEntryTo(out, map, defaultEntry, fieldNumber, false);
            maybeSerializeBooleanEntryTo(out, map, defaultEntry, fieldNumber, true);
        }
    }

    public static <V> void serializeIntegerMapTo(CodedOutputStream out, MapField<Integer, V> field, MapEntry<Integer, V> defaultEntry, int fieldNumber) throws IOException {
        Map<Integer, V> map = field.getMap();
        if (!out.m28692L()) {
            serializeMapTo(out, map, defaultEntry, fieldNumber);
            return;
        }
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it2 = map.keySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = it2.next().intValue();
            i++;
        }
        Arrays.sort(iArr);
        for (int i2 = 0; i2 < size; i2++) {
            int i3 = iArr[i2];
            out.writeMessage(fieldNumber, defaultEntry.newBuilderForType().setKey(Integer.valueOf(i3)).setValue(map.get(Integer.valueOf(i3))).build());
        }
    }

    public static <V> void serializeLongMapTo(CodedOutputStream out, MapField<Long, V> field, MapEntry<Long, V> defaultEntry, int fieldNumber) throws IOException {
        Map<Long, V> map = field.getMap();
        if (!out.m28692L()) {
            serializeMapTo(out, map, defaultEntry, fieldNumber);
            return;
        }
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it2 = map.keySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            jArr[i] = it2.next().longValue();
            i++;
        }
        Arrays.sort(jArr);
        for (int i2 = 0; i2 < size; i2++) {
            long j = jArr[i2];
            out.writeMessage(fieldNumber, defaultEntry.newBuilderForType().setKey(Long.valueOf(j)).setValue(map.get(Long.valueOf(j))).build());
        }
    }

    private static <K, V> void serializeMapTo(CodedOutputStream out, Map<K, V> m, MapEntry<K, V> defaultEntry, int fieldNumber) throws IOException {
        for (Map.Entry<K, V> entry : m.entrySet()) {
            out.writeMessage(fieldNumber, defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
        }
    }

    public static <V> void serializeStringMapTo(CodedOutputStream out, MapField<String, V> field, MapEntry<String, V> defaultEntry, int fieldNumber) throws IOException {
        Map<String, V> map = field.getMap();
        if (!out.m28692L()) {
            serializeMapTo(out, map, defaultEntry, fieldNumber);
            return;
        }
        String[] strArr = (String[]) map.keySet().toArray(new String[map.size()]);
        Arrays.sort(strArr);
        for (String str : strArr) {
            out.writeMessage(fieldNumber, defaultEntry.newBuilderForType().setKey(str).setValue(map.get(str)).build());
        }
    }

    public static void setAlwaysUseFieldBuildersForTesting(boolean useBuilders) {
        alwaysUseFieldBuilders = useBuilders;
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
        return internalGetFieldAccessorTable().f37602a;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getField(final Descriptors.FieldDescriptor field) {
        return internalGetFieldAccessorTable().m29288d(field).mo29291b(this);
    }

    public Object getFieldRaw(final Descriptors.FieldDescriptor field) {
        return internalGetFieldAccessorTable().m29288d(field).mo29302m(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(final Descriptors.OneofDescriptor oneof) {
        return internalGetFieldAccessorTable().m29289e(oneof).mo29310b(this);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<? extends GeneratedMessageV3> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getRepeatedField(final Descriptors.FieldDescriptor field, final int index) {
        return internalGetFieldAccessorTable().m29288d(field).mo29301l(this, index);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(final Descriptors.FieldDescriptor field) {
        return internalGetFieldAccessorTable().m29288d(field).mo29295f(this);
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
        return this.unknownFields;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasField(final Descriptors.FieldDescriptor field) {
        return internalGetFieldAccessorTable().m29288d(field).mo29293d(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public boolean hasOneof(final Descriptors.OneofDescriptor oneof) {
        return internalGetFieldAccessorTable().m29289e(oneof).mo29312d(this);
    }

    public abstract FieldAccessorTable internalGetFieldAccessorTable();

    public MapField internalGetMapField(int fieldNumber) {
        throw new IllegalArgumentException("No map fields found in " + getClass().getName());
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

    @Deprecated
    public void mergeFromAndMakeImmutableInternal(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        InterfaceC6889z m53625j = d9l.m53616a().m53625j(this);
        try {
            m53625j.mo30379i(this, C6869f.m30203U(input), extensionRegistry);
            m53625j.mo30375g(this);
        } catch (InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(this);
        } catch (IOException e2) {
            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
        }
    }

    @Override // com.google.protobuf.AbstractMessage
    public Message.Builder newBuilderForType(final AbstractMessage.BuilderParent parent) {
        return newBuilderForType((BuilderParent) new C6777a(parent));
    }

    public abstract Message.Builder newBuilderForType(BuilderParent parent);

    public Object newInstance(UnusedPrivateParameter unused) {
        throw new UnsupportedOperationException("This method must be overridden by the subclass.");
    }

    public boolean parseUnknownField(CodedInputStream input, UnknownFieldSet.Builder unknownFields, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
        return input.m28642g() ? input.skipField(tag) : unknownFields.mergeFieldFrom(tag, input);
    }

    public boolean parseUnknownFieldProto3(CodedInputStream input, UnknownFieldSet.Builder unknownFields, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
        return parseUnknownField(input, unknownFields, extensionRegistry, tag);
    }

    public void setUnknownFields(UnknownFieldSet unknownFields) {
        this.unknownFields = unknownFields;
    }

    public Object writeReplace() throws ObjectStreamException {
        return new GeneratedMessageLite.SerializedForm(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(final CodedOutputStream output) throws IOException {
        MessageReflection.m29417l(this, getAllFieldsRaw(), output, false);
    }

    /* loaded from: classes6.dex */
    public static abstract class ExtendableMessage<MessageT extends ExtendableMessage<MessageT>> extends GeneratedMessageV3 implements ExtendableMessageOrBuilder<MessageT> {
        private static final long serialVersionUID = 1;
        private final FieldSet<Descriptors.FieldDescriptor> extensions;

        /* loaded from: classes6.dex */
        public class ExtensionWriter {

            /* renamed from: a */
            public final Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> f37598a;

            /* renamed from: b */
            public Map.Entry<Descriptors.FieldDescriptor, Object> f37599b;

            /* renamed from: c */
            public final boolean f37600c;

            public /* synthetic */ ExtensionWriter(ExtendableMessage extendableMessage, boolean z, C6777a c6777a) {
                this(z);
            }

            public void writeUntil(final int end, final CodedOutputStream output) throws IOException {
                while (true) {
                    Map.Entry<Descriptors.FieldDescriptor, Object> entry = this.f37599b;
                    if (entry == null || entry.getKey().getNumber() >= end) {
                        return;
                    }
                    Descriptors.FieldDescriptor key = this.f37599b.getKey();
                    if (!this.f37600c || key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated()) {
                        FieldSet.m29122U(key, this.f37599b.getValue(), output);
                    } else if (this.f37599b instanceof LazyField.C6786b) {
                        output.writeRawMessageSetExtension(key.getNumber(), ((LazyField.C6786b) this.f37599b).m29352a().toByteString());
                    } else {
                        output.writeMessageSetExtension(key.getNumber(), (Message) this.f37599b.getValue());
                    }
                    if (this.f37598a.hasNext()) {
                        this.f37599b = this.f37598a.next();
                    } else {
                        this.f37599b = null;
                    }
                }
            }

            public ExtensionWriter(final boolean messageSetWireFormat) {
                Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> m29141I = ExtendableMessage.this.extensions.m29141I();
                this.f37598a = m29141I;
                if (m29141I.hasNext()) {
                    this.f37599b = m29141I.next();
                }
                this.f37600c = messageSetWireFormat;
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

        private void verifyExtensionContainingType(final Extension<MessageT, ?> extension) {
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Map<Descriptors.FieldDescriptor, Object> getAllFieldsRaw() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(ExtensionLite<MessageT, T> extensionLite) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            verifyExtensionContainingType(checkNotLite);
            Descriptors.FieldDescriptor descriptor = checkNotLite.getDescriptor();
            Object m29157u = this.extensions.m29157u(descriptor);
            if (m29157u == null) {
                if (descriptor.isRepeated()) {
                    return (T) Collections.emptyList();
                }
                if (descriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    return (T) checkNotLite.getMessageDefaultInstance();
                }
                return (T) checkNotLite.fromReflectionType(descriptor.getDefaultValue());
            }
            return (T) checkNotLite.fromReflectionType(m29157u);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> int getExtensionCount(final ExtensionLite<MessageT, List<T>> extensionLite) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            verifyExtensionContainingType(checkNotLite);
            return this.extensions.m29161y(checkNotLite.getDescriptor());
        }

        public Map<Descriptors.FieldDescriptor, Object> getExtensionFields() {
            return this.extensions.m29156t();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public Object getField(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getField(field);
            }
            verifyContainingType(field);
            Object m29157u = this.extensions.m29157u(field);
            return m29157u == null ? field.isRepeated() ? Collections.emptyList() : field.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE ? DynamicMessage.getDefaultInstance(field.getMessageType()) : field.getDefaultValue() : m29157u;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(final Descriptors.FieldDescriptor field, final int index) {
            if (!field.isExtension()) {
                return super.getRepeatedField(field, index);
            }
            verifyContainingType(field);
            return this.extensions.m29160x(field, index);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.getRepeatedFieldCount(field);
            }
            verifyContainingType(field);
            return this.extensions.m29161y(field);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> boolean hasExtension(final ExtensionLite<MessageT, T> extensionLite) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            verifyExtensionContainingType(checkNotLite);
            return this.extensions.m29137B(checkNotLite.getDescriptor());
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public boolean hasField(final Descriptors.FieldDescriptor field) {
            if (!field.isExtension()) {
                return super.hasField(field);
            }
            verifyContainingType(field);
            return this.extensions.m29137B(field);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return super.isInitialized() && extensionsAreInitialized();
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public void makeExtensionsImmutable() {
            this.extensions.m29142J();
        }

        public ExtendableMessage<MessageT>.ExtensionWriter newExtensionWriter() {
            return new ExtensionWriter(this, false, null);
        }

        public ExtendableMessage<MessageT>.ExtensionWriter newMessageSetExtensionWriter() {
            return new ExtensionWriter(this, true, null);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public boolean parseUnknownField(CodedInputStream input, UnknownFieldSet.Builder unknownFields, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
            if (input.m28642g()) {
                unknownFields = null;
            }
            return MessageReflection.m29412g(input, unknownFields, extensionRegistry, getDescriptorForType(), new MessageReflection.C6801c(this.extensions), tag);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public boolean parseUnknownFieldProto3(CodedInputStream input, UnknownFieldSet.Builder unknownFields, ExtensionRegistryLite extensionRegistry, int tag) throws IOException {
            return parseUnknownField(input, unknownFields, extensionRegistry, tag);
        }

        public ExtendableMessage(ExtendableBuilder<MessageT, ?> builder) {
            super(builder);
            this.extensions = builder.m29280i();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> boolean hasExtension(final Extension<MessageT, T> extension) {
            return hasExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> int getExtensionCount(final Extension<MessageT, List<T>> extension) {
            return getExtensionCount((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> boolean hasExtension(final GeneratedMessage.GeneratedExtension<MessageT, T> extension) {
            return hasExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> int getExtensionCount(final GeneratedMessage.GeneratedExtension<MessageT, List<T>> extension) {
            return getExtensionCount((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(ExtensionLite<MessageT, List<T>> extensionLite, int i) {
            Extension<MessageT, ?> checkNotLite = GeneratedMessageV3.checkNotLite(extensionLite);
            verifyExtensionContainingType(checkNotLite);
            return (T) checkNotLite.singularFromReflectionType(this.extensions.m29160x(checkNotLite.getDescriptor(), i));
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(Extension<MessageT, T> extension) {
            return (T) getExtension((ExtensionLite) extension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(GeneratedMessage.GeneratedExtension<MessageT, T> generatedExtension) {
            return (T) getExtension((ExtensionLite) generatedExtension);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(Extension<MessageT, List<T>> extension, int i) {
            return (T) getExtension((ExtensionLite) extension, i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <T> T getExtension(GeneratedMessage.GeneratedExtension<MessageT, List<T>> generatedExtension, int i) {
            return (T) getExtension((ExtensionLite) generatedExtension, i);
        }
    }

    /* loaded from: classes6.dex */
    public static final class FieldAccessorTable {

        /* renamed from: a */
        public final Descriptors.Descriptor f37602a;

        /* renamed from: b */
        public final InterfaceC6765a[] f37603b;

        /* renamed from: c */
        public String[] f37604c;

        /* renamed from: d */
        public final InterfaceC6767c[] f37605d;

        /* renamed from: e */
        public volatile boolean f37606e;

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$a */
        /* loaded from: classes6.dex */
        public interface InterfaceC6765a {
            /* renamed from: a */
            void mo29290a(Builder<?> builder);

            /* renamed from: b */
            Object mo29291b(GeneratedMessageV3 message);

            /* renamed from: c */
            Object mo29292c(Builder<?> builder);

            /* renamed from: d */
            boolean mo29293d(GeneratedMessageV3 message);

            /* renamed from: e */
            boolean mo29294e(Builder<?> builder);

            /* renamed from: f */
            int mo29295f(GeneratedMessageV3 message);

            /* renamed from: g */
            void mo29296g(Builder<?> builder, Object value);

            /* renamed from: h */
            void mo29297h(Builder<?> builder, int index, Object value);

            /* renamed from: i */
            Object mo29298i(Builder<?> builder, int index);

            /* renamed from: j */
            void mo29299j(Builder<?> builder, Object value);

            /* renamed from: k */
            int mo29300k(Builder<?> builder);

            /* renamed from: l */
            Object mo29301l(GeneratedMessageV3 message, int index);

            /* renamed from: m */
            Object mo29302m(GeneratedMessageV3 message);

            /* renamed from: n */
            Message.Builder mo29303n(Builder<?> builder, int index);

            Message.Builder newBuilder();

            /* renamed from: o */
            Message.Builder mo29304o(Builder<?> builder);
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$b */
        /* loaded from: classes6.dex */
        public static class C6766b implements InterfaceC6765a {

            /* renamed from: a */
            public final Descriptors.FieldDescriptor f37607a;

            /* renamed from: b */
            public final Message f37608b;

            public C6766b(final Descriptors.FieldDescriptor descriptor, final Class<? extends GeneratedMessageV3> messageClass) {
                this.f37607a = descriptor;
                this.f37608b = m29307r((GeneratedMessageV3) GeneratedMessageV3.invokeOrDie(GeneratedMessageV3.getMethodOrDie(messageClass, C6871h.f38109a, new Class[0]), null, new Object[0])).m29401f();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: a */
            public void mo29290a(Builder<?> builder) {
                m29308s(builder).m29402g().clear();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: b */
            public Object mo29291b(GeneratedMessageV3 message) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < mo29295f(message); i++) {
                    arrayList.add(mo29301l(message, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: c */
            public Object mo29292c(Builder<?> builder) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < mo29300k(builder); i++) {
                    arrayList.add(mo29298i(builder, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: d */
            public boolean mo29293d(GeneratedMessageV3 message) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: e */
            public boolean mo29294e(Builder<?> builder) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: f */
            public int mo29295f(GeneratedMessageV3 message) {
                return m29307r(message).m29400e().size();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: g */
            public void mo29296g(Builder<?> builder, Object value) {
                m29308s(builder).m29402g().add(m29305p((Message) value));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: h */
            public void mo29297h(Builder<?> builder, int index, Object value) {
                m29308s(builder).m29402g().set(index, m29305p((Message) value));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: i */
            public Object mo29298i(Builder<?> builder, int index) {
                return m29306q(builder).m29400e().get(index);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: j */
            public void mo29299j(Builder<?> builder, Object value) {
                mo29290a(builder);
                Iterator it2 = ((List) value).iterator();
                while (it2.hasNext()) {
                    mo29296g(builder, it2.next());
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: k */
            public int mo29300k(Builder<?> builder) {
                return m29306q(builder).m29400e().size();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: l */
            public Object mo29301l(GeneratedMessageV3 message, int index) {
                return m29307r(message).m29400e().get(index);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: m */
            public Object mo29302m(GeneratedMessageV3 message) {
                return mo29291b(message);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: n */
            public Message.Builder mo29303n(Builder<?> builder, int index) {
                throw new UnsupportedOperationException("Map fields cannot be repeated");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            public Message.Builder newBuilder() {
                return this.f37608b.newBuilderForType();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: o */
            public Message.Builder mo29304o(Builder<?> builder) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            /* renamed from: p */
            public final Message m29305p(Message value) {
                if (value == null) {
                    return null;
                }
                return this.f37608b.getClass().isInstance(value) ? value : this.f37608b.toBuilder().mergeFrom(value).build();
            }

            /* renamed from: q */
            public final MapField<?, ?> m29306q(Builder<?> builder) {
                return builder.internalGetMapField(this.f37607a.getNumber());
            }

            /* renamed from: r */
            public final MapField<?, ?> m29307r(GeneratedMessageV3 message) {
                return message.internalGetMapField(this.f37607a.getNumber());
            }

            /* renamed from: s */
            public final MapField<?, ?> m29308s(Builder<?> builder) {
                return builder.internalGetMutableMapField(this.f37607a.getNumber());
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$c */
        /* loaded from: classes6.dex */
        public interface InterfaceC6767c {
            /* renamed from: a */
            void mo29309a(final Builder<?> builder);

            /* renamed from: b */
            Descriptors.FieldDescriptor mo29310b(final GeneratedMessageV3 message);

            /* renamed from: c */
            Descriptors.FieldDescriptor mo29311c(Builder<?> builder);

            /* renamed from: d */
            boolean mo29312d(final GeneratedMessageV3 message);

            /* renamed from: e */
            boolean mo29313e(Builder<?> builder);
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$d */
        /* loaded from: classes6.dex */
        public static class C6768d implements InterfaceC6767c {

            /* renamed from: a */
            public final Descriptors.Descriptor f37609a;

            /* renamed from: b */
            public final java.lang.reflect.Method f37610b;

            /* renamed from: c */
            public final java.lang.reflect.Method f37611c;

            /* renamed from: d */
            public final java.lang.reflect.Method f37612d;

            public C6768d(final Descriptors.Descriptor descriptor, final int oneofIndex, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass) {
                this.f37609a = descriptor;
                this.f37610b = GeneratedMessageV3.getMethodOrDie(messageClass, "get" + camelCaseName + "Case", new Class[0]);
                this.f37611c = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName + "Case", new Class[0]);
                StringBuilder sb = new StringBuilder();
                sb.append(Constants.CLEAR_ATTRIBUTES);
                sb.append(camelCaseName);
                this.f37612d = GeneratedMessageV3.getMethodOrDie(builderClass, sb.toString(), new Class[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: a */
            public void mo29309a(final Builder<?> builder) {
                GeneratedMessageV3.invokeOrDie(this.f37612d, builder, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: b */
            public Descriptors.FieldDescriptor mo29310b(final GeneratedMessageV3 message) {
                int number = ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f37610b, message, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f37609a.findFieldByNumber(number);
                }
                return null;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: c */
            public Descriptors.FieldDescriptor mo29311c(Builder<?> builder) {
                int number = ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f37611c, builder, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f37609a.findFieldByNumber(number);
                }
                return null;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: d */
            public boolean mo29312d(final GeneratedMessageV3 message) {
                return ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f37610b, message, new Object[0])).getNumber() != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: e */
            public boolean mo29313e(Builder<?> builder) {
                return ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f37611c, builder, new Object[0])).getNumber() != 0;
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$e */
        /* loaded from: classes6.dex */
        public static final class C6769e extends C6770f {

            /* renamed from: c */
            public final Descriptors.EnumDescriptor f37613c;

            /* renamed from: d */
            public final java.lang.reflect.Method f37614d;

            /* renamed from: e */
            public final java.lang.reflect.Method f37615e;

            /* renamed from: f */
            public final boolean f37616f;

            /* renamed from: g */
            public java.lang.reflect.Method f37617g;

            /* renamed from: h */
            public java.lang.reflect.Method f37618h;

            /* renamed from: i */
            public java.lang.reflect.Method f37619i;

            /* renamed from: j */
            public java.lang.reflect.Method f37620j;

            public C6769e(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass) {
                super(descriptor, camelCaseName, messageClass, builderClass);
                this.f37613c = descriptor.getEnumType();
                this.f37614d = GeneratedMessageV3.getMethodOrDie(this.f37621a, "valueOf", Descriptors.EnumValueDescriptor.class);
                this.f37615e = GeneratedMessageV3.getMethodOrDie(this.f37621a, "getValueDescriptor", new Class[0]);
                boolean z = !descriptor.legacyEnumFieldTreatedAsClosed();
                this.f37616f = z;
                if (z) {
                    Class cls = Integer.TYPE;
                    this.f37617g = GeneratedMessageV3.getMethodOrDie(messageClass, "get" + camelCaseName + "Value", cls);
                    this.f37618h = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName + "Value", cls);
                    this.f37619i = GeneratedMessageV3.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName + "Value", cls, cls);
                    this.f37620j = GeneratedMessageV3.getMethodOrDie(builderClass, "add" + camelCaseName + "Value", cls);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: b */
            public Object mo29291b(final GeneratedMessageV3 message) {
                ArrayList arrayList = new ArrayList();
                int mo29295f = mo29295f(message);
                for (int i = 0; i < mo29295f; i++) {
                    arrayList.add(mo29301l(message, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: c */
            public Object mo29292c(final Builder<?> builder) {
                ArrayList arrayList = new ArrayList();
                int mo29300k = mo29300k(builder);
                for (int i = 0; i < mo29300k; i++) {
                    arrayList.add(mo29298i(builder, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: g */
            public void mo29296g(final Builder<?> builder, final Object value) {
                if (this.f37616f) {
                    GeneratedMessageV3.invokeOrDie(this.f37620j, builder, Integer.valueOf(((Descriptors.EnumValueDescriptor) value).getNumber()));
                } else {
                    super.mo29296g(builder, GeneratedMessageV3.invokeOrDie(this.f37614d, null, value));
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: h */
            public void mo29297h(final Builder<?> builder, final int index, final Object value) {
                if (this.f37616f) {
                    GeneratedMessageV3.invokeOrDie(this.f37619i, builder, Integer.valueOf(index), Integer.valueOf(((Descriptors.EnumValueDescriptor) value).getNumber()));
                } else {
                    super.mo29297h(builder, index, GeneratedMessageV3.invokeOrDie(this.f37614d, null, value));
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: i */
            public Object mo29298i(final Builder<?> builder, final int index) {
                if (!this.f37616f) {
                    return GeneratedMessageV3.invokeOrDie(this.f37615e, super.mo29298i(builder, index), new Object[0]);
                }
                return this.f37613c.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessageV3.invokeOrDie(this.f37618h, builder, Integer.valueOf(index))).intValue());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: l */
            public Object mo29301l(final GeneratedMessageV3 message, final int index) {
                if (!this.f37616f) {
                    return GeneratedMessageV3.invokeOrDie(this.f37615e, super.mo29301l(message, index), new Object[0]);
                }
                return this.f37613c.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessageV3.invokeOrDie(this.f37617g, message, Integer.valueOf(index))).intValue());
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$f */
        /* loaded from: classes6.dex */
        public static class C6770f implements InterfaceC6765a {

            /* renamed from: a */
            public final Class<?> f37621a;

            /* renamed from: b */
            public final a f37622b;

            /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$f$a */
            /* loaded from: classes6.dex */
            public interface a {
                /* renamed from: a */
                void mo29315a(final Builder<?> builder);

                /* renamed from: b */
                Object mo29316b(final GeneratedMessageV3 message);

                /* renamed from: c */
                Object mo29317c(Builder<?> builder);

                /* renamed from: f */
                int mo29318f(final GeneratedMessageV3 message);

                /* renamed from: g */
                void mo29319g(final Builder<?> builder, final Object value);

                /* renamed from: h */
                void mo29320h(final Builder<?> builder, final int index, final Object value);

                /* renamed from: i */
                Object mo29321i(Builder<?> builder, int index);

                /* renamed from: k */
                int mo29322k(Builder<?> builder);

                /* renamed from: l */
                Object mo29323l(final GeneratedMessageV3 message, final int index);
            }

            /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$f$b */
            /* loaded from: classes6.dex */
            public static final class b implements a {

                /* renamed from: a */
                public final java.lang.reflect.Method f37623a;

                /* renamed from: b */
                public final java.lang.reflect.Method f37624b;

                /* renamed from: c */
                public final java.lang.reflect.Method f37625c;

                /* renamed from: d */
                public final java.lang.reflect.Method f37626d;

                /* renamed from: e */
                public final java.lang.reflect.Method f37627e;

                /* renamed from: f */
                public final java.lang.reflect.Method f37628f;

                /* renamed from: g */
                public final java.lang.reflect.Method f37629g;

                /* renamed from: h */
                public final java.lang.reflect.Method f37630h;

                /* renamed from: i */
                public final java.lang.reflect.Method f37631i;

                public b(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass) {
                    this.f37623a = GeneratedMessageV3.getMethodOrDie(messageClass, "get" + camelCaseName + C6883t.f38147a, new Class[0]);
                    this.f37624b = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName + C6883t.f38147a, new Class[0]);
                    StringBuilder sb = new StringBuilder();
                    sb.append("get");
                    sb.append(camelCaseName);
                    String sb2 = sb.toString();
                    Class cls = Integer.TYPE;
                    java.lang.reflect.Method methodOrDie = GeneratedMessageV3.getMethodOrDie(messageClass, sb2, cls);
                    this.f37625c = methodOrDie;
                    this.f37626d = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName, cls);
                    Class<?> returnType = methodOrDie.getReturnType();
                    this.f37627e = GeneratedMessageV3.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName, cls, returnType);
                    this.f37628f = GeneratedMessageV3.getMethodOrDie(builderClass, "add" + camelCaseName, returnType);
                    this.f37629g = GeneratedMessageV3.getMethodOrDie(messageClass, "get" + camelCaseName + "Count", new Class[0]);
                    this.f37630h = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName + "Count", new Class[0]);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(Constants.CLEAR_ATTRIBUTES);
                    sb3.append(camelCaseName);
                    this.f37631i = GeneratedMessageV3.getMethodOrDie(builderClass, sb3.toString(), new Class[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: a */
                public void mo29315a(final Builder<?> builder) {
                    GeneratedMessageV3.invokeOrDie(this.f37631i, builder, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: b */
                public Object mo29316b(final GeneratedMessageV3 message) {
                    return GeneratedMessageV3.invokeOrDie(this.f37623a, message, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: c */
                public Object mo29317c(Builder<?> builder) {
                    return GeneratedMessageV3.invokeOrDie(this.f37624b, builder, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: f */
                public int mo29318f(final GeneratedMessageV3 message) {
                    return ((Integer) GeneratedMessageV3.invokeOrDie(this.f37629g, message, new Object[0])).intValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: g */
                public void mo29319g(final Builder<?> builder, final Object value) {
                    GeneratedMessageV3.invokeOrDie(this.f37628f, builder, value);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: h */
                public void mo29320h(final Builder<?> builder, final int index, final Object value) {
                    GeneratedMessageV3.invokeOrDie(this.f37627e, builder, Integer.valueOf(index), value);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: i */
                public Object mo29321i(Builder<?> builder, int index) {
                    return GeneratedMessageV3.invokeOrDie(this.f37626d, builder, Integer.valueOf(index));
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: k */
                public int mo29322k(Builder<?> builder) {
                    return ((Integer) GeneratedMessageV3.invokeOrDie(this.f37630h, builder, new Object[0])).intValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f.a
                /* renamed from: l */
                public Object mo29323l(final GeneratedMessageV3 message, final int index) {
                    return GeneratedMessageV3.invokeOrDie(this.f37625c, message, Integer.valueOf(index));
                }
            }

            public C6770f(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass) {
                b bVar = new b(descriptor, camelCaseName, messageClass, builderClass);
                this.f37621a = bVar.f37625c.getReturnType();
                this.f37622b = m29314p(bVar);
            }

            /* renamed from: p */
            public static a m29314p(b accessor) {
                return accessor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: a */
            public void mo29290a(final Builder<?> builder) {
                this.f37622b.mo29315a(builder);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: b */
            public Object mo29291b(final GeneratedMessageV3 message) {
                return this.f37622b.mo29316b(message);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: c */
            public Object mo29292c(Builder<?> builder) {
                return this.f37622b.mo29317c(builder);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: d */
            public boolean mo29293d(final GeneratedMessageV3 message) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: e */
            public boolean mo29294e(Builder<?> builder) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: f */
            public int mo29295f(final GeneratedMessageV3 message) {
                return this.f37622b.mo29318f(message);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: g */
            public void mo29296g(final Builder<?> builder, final Object value) {
                this.f37622b.mo29319g(builder, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: h */
            public void mo29297h(final Builder<?> builder, final int index, final Object value) {
                this.f37622b.mo29320h(builder, index, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: i */
            public Object mo29298i(Builder<?> builder, int index) {
                return this.f37622b.mo29321i(builder, index);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: j */
            public void mo29299j(final Builder<?> builder, final Object value) {
                mo29290a(builder);
                Iterator it2 = ((List) value).iterator();
                while (it2.hasNext()) {
                    mo29296g(builder, it2.next());
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: k */
            public int mo29300k(Builder<?> builder) {
                return this.f37622b.mo29322k(builder);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: l */
            public Object mo29301l(final GeneratedMessageV3 message, final int index) {
                return this.f37622b.mo29323l(message, index);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: m */
            public Object mo29302m(final GeneratedMessageV3 message) {
                return mo29291b(message);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: n */
            public Message.Builder mo29303n(Builder<?> builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            public Message.Builder newBuilder() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: o */
            public Message.Builder mo29304o(Builder<?> builder) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$g */
        /* loaded from: classes6.dex */
        public static final class C6771g extends C6770f {

            /* renamed from: c */
            public final java.lang.reflect.Method f37632c;

            /* renamed from: d */
            public final java.lang.reflect.Method f37633d;

            public C6771g(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass) {
                super(descriptor, camelCaseName, messageClass, builderClass);
                this.f37632c = GeneratedMessageV3.getMethodOrDie(this.f37621a, "newBuilder", new Class[0]);
                this.f37633d = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName + "Builder", Integer.TYPE);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: g */
            public void mo29296g(final Builder<?> builder, final Object value) {
                super.mo29296g(builder, m29325q(value));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: h */
            public void mo29297h(final Builder<?> builder, final int index, final Object value) {
                super.mo29297h(builder, index, m29325q(value));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: n */
            public Message.Builder mo29303n(final Builder<?> builder, final int index) {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f37633d, builder, Integer.valueOf(index));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6770f, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            public Message.Builder newBuilder() {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f37632c, null, new Object[0]);
            }

            /* renamed from: q */
            public final Object m29325q(final Object value) {
                return this.f37621a.isInstance(value) ? value : ((Message.Builder) GeneratedMessageV3.invokeOrDie(this.f37632c, null, new Object[0])).mergeFrom((Message) value).build();
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$h */
        /* loaded from: classes6.dex */
        public static final class C6772h extends C6773i {

            /* renamed from: f */
            public final Descriptors.EnumDescriptor f37634f;

            /* renamed from: g */
            public final java.lang.reflect.Method f37635g;

            /* renamed from: h */
            public final java.lang.reflect.Method f37636h;

            /* renamed from: i */
            public final boolean f37637i;

            /* renamed from: j */
            public java.lang.reflect.Method f37638j;

            /* renamed from: k */
            public java.lang.reflect.Method f37639k;

            /* renamed from: l */
            public java.lang.reflect.Method f37640l;

            public C6772h(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f37634f = descriptor.getEnumType();
                this.f37635g = GeneratedMessageV3.getMethodOrDie(this.f37641a, "valueOf", Descriptors.EnumValueDescriptor.class);
                this.f37636h = GeneratedMessageV3.getMethodOrDie(this.f37641a, "getValueDescriptor", new Class[0]);
                boolean z = !descriptor.legacyEnumFieldTreatedAsClosed();
                this.f37637i = z;
                if (z) {
                    this.f37638j = GeneratedMessageV3.getMethodOrDie(messageClass, "get" + camelCaseName + "Value", new Class[0]);
                    this.f37639k = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName + "Value", new Class[0]);
                    this.f37640l = GeneratedMessageV3.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName + "Value", Integer.TYPE);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: b */
            public Object mo29291b(final GeneratedMessageV3 message) {
                if (!this.f37637i) {
                    return GeneratedMessageV3.invokeOrDie(this.f37636h, super.mo29291b(message), new Object[0]);
                }
                return this.f37634f.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessageV3.invokeOrDie(this.f37638j, message, new Object[0])).intValue());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: c */
            public Object mo29292c(final Builder<?> builder) {
                if (!this.f37637i) {
                    return GeneratedMessageV3.invokeOrDie(this.f37636h, super.mo29292c(builder), new Object[0]);
                }
                return this.f37634f.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessageV3.invokeOrDie(this.f37639k, builder, new Object[0])).intValue());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: j */
            public void mo29299j(final Builder<?> builder, final Object value) {
                if (this.f37637i) {
                    GeneratedMessageV3.invokeOrDie(this.f37640l, builder, Integer.valueOf(((Descriptors.EnumValueDescriptor) value).getNumber()));
                } else {
                    super.mo29299j(builder, GeneratedMessageV3.invokeOrDie(this.f37635g, null, value));
                }
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$i */
        /* loaded from: classes6.dex */
        public static class C6773i implements InterfaceC6765a {

            /* renamed from: a */
            public final Class<?> f37641a;

            /* renamed from: b */
            public final Descriptors.FieldDescriptor f37642b;

            /* renamed from: c */
            public final boolean f37643c;

            /* renamed from: d */
            public final boolean f37644d;

            /* renamed from: e */
            public final a f37645e;

            /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$i$a */
            /* loaded from: classes6.dex */
            public interface a {
                /* renamed from: a */
                void mo29327a(final Builder<?> builder);

                /* renamed from: b */
                Object mo29328b(final GeneratedMessageV3 message);

                /* renamed from: c */
                Object mo29329c(Builder<?> builder);

                /* renamed from: d */
                boolean mo29330d(final GeneratedMessageV3 message);

                /* renamed from: e */
                boolean mo29331e(Builder<?> builder);

                /* renamed from: f */
                int mo29332f(final GeneratedMessageV3 message);

                /* renamed from: g */
                int mo29333g(final Builder<?> builder);

                /* renamed from: j */
                void mo29334j(final Builder<?> builder, final Object value);
            }

            /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$i$b */
            /* loaded from: classes6.dex */
            public static final class b implements a {

                /* renamed from: a */
                public final java.lang.reflect.Method f37646a;

                /* renamed from: b */
                public final java.lang.reflect.Method f37647b;

                /* renamed from: c */
                public final java.lang.reflect.Method f37648c;

                /* renamed from: d */
                public final java.lang.reflect.Method f37649d;

                /* renamed from: e */
                public final java.lang.reflect.Method f37650e;

                /* renamed from: f */
                public final java.lang.reflect.Method f37651f;

                /* renamed from: g */
                public final java.lang.reflect.Method f37652g;

                /* renamed from: h */
                public final java.lang.reflect.Method f37653h;

                public b(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass, final String containingOneofCamelCaseName, boolean isOneofField, boolean hasHasMethod) {
                    java.lang.reflect.Method method;
                    java.lang.reflect.Method method2;
                    java.lang.reflect.Method method3;
                    java.lang.reflect.Method methodOrDie = GeneratedMessageV3.getMethodOrDie(messageClass, "get" + camelCaseName, new Class[0]);
                    this.f37646a = methodOrDie;
                    this.f37647b = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName, new Class[0]);
                    this.f37648c = GeneratedMessageV3.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName, methodOrDie.getReturnType());
                    java.lang.reflect.Method method4 = null;
                    if (hasHasMethod) {
                        method = GeneratedMessageV3.getMethodOrDie(messageClass, "has" + camelCaseName, new Class[0]);
                    } else {
                        method = null;
                    }
                    this.f37649d = method;
                    if (hasHasMethod) {
                        method2 = GeneratedMessageV3.getMethodOrDie(builderClass, "has" + camelCaseName, new Class[0]);
                    } else {
                        method2 = null;
                    }
                    this.f37650e = method2;
                    this.f37651f = GeneratedMessageV3.getMethodOrDie(builderClass, Constants.CLEAR_ATTRIBUTES + camelCaseName, new Class[0]);
                    if (isOneofField) {
                        method3 = GeneratedMessageV3.getMethodOrDie(messageClass, "get" + containingOneofCamelCaseName + "Case", new Class[0]);
                    } else {
                        method3 = null;
                    }
                    this.f37652g = method3;
                    if (isOneofField) {
                        method4 = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + containingOneofCamelCaseName + "Case", new Class[0]);
                    }
                    this.f37653h = method4;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i.a
                /* renamed from: a */
                public void mo29327a(final Builder<?> builder) {
                    GeneratedMessageV3.invokeOrDie(this.f37651f, builder, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i.a
                /* renamed from: b */
                public Object mo29328b(final GeneratedMessageV3 message) {
                    return GeneratedMessageV3.invokeOrDie(this.f37646a, message, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i.a
                /* renamed from: c */
                public Object mo29329c(Builder<?> builder) {
                    return GeneratedMessageV3.invokeOrDie(this.f37647b, builder, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i.a
                /* renamed from: d */
                public boolean mo29330d(final GeneratedMessageV3 message) {
                    return ((Boolean) GeneratedMessageV3.invokeOrDie(this.f37649d, message, new Object[0])).booleanValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i.a
                /* renamed from: e */
                public boolean mo29331e(Builder<?> builder) {
                    return ((Boolean) GeneratedMessageV3.invokeOrDie(this.f37650e, builder, new Object[0])).booleanValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i.a
                /* renamed from: f */
                public int mo29332f(final GeneratedMessageV3 message) {
                    return ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f37652g, message, new Object[0])).getNumber();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i.a
                /* renamed from: g */
                public int mo29333g(final Builder<?> builder) {
                    return ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f37653h, builder, new Object[0])).getNumber();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i.a
                /* renamed from: j */
                public void mo29334j(final Builder<?> builder, final Object value) {
                    GeneratedMessageV3.invokeOrDie(this.f37648c, builder, value);
                }
            }

            public C6773i(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass, final String containingOneofCamelCaseName) {
                boolean z = descriptor.getRealContainingOneof() != null;
                this.f37643c = z;
                boolean hasPresence = descriptor.hasPresence();
                this.f37644d = hasPresence;
                b bVar = new b(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName, z, hasPresence);
                this.f37642b = descriptor;
                this.f37641a = bVar.f37646a.getReturnType();
                this.f37645e = m29326p(bVar);
            }

            /* renamed from: p */
            public static a m29326p(b accessor) {
                return accessor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: a */
            public void mo29290a(final Builder<?> builder) {
                this.f37645e.mo29327a(builder);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: b */
            public Object mo29291b(final GeneratedMessageV3 message) {
                return this.f37645e.mo29328b(message);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: c */
            public Object mo29292c(Builder<?> builder) {
                return this.f37645e.mo29329c(builder);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: d */
            public boolean mo29293d(final GeneratedMessageV3 message) {
                return !this.f37644d ? this.f37643c ? this.f37645e.mo29332f(message) == this.f37642b.getNumber() : !mo29291b(message).equals(this.f37642b.getDefaultValue()) : this.f37645e.mo29330d(message);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: e */
            public boolean mo29294e(Builder<?> builder) {
                return !this.f37644d ? this.f37643c ? this.f37645e.mo29333g(builder) == this.f37642b.getNumber() : !mo29292c(builder).equals(this.f37642b.getDefaultValue()) : this.f37645e.mo29331e(builder);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: f */
            public int mo29295f(final GeneratedMessageV3 message) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: g */
            public void mo29296g(final Builder<?> builder, final Object value) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: h */
            public void mo29297h(final Builder<?> builder, final int index, final Object value) {
                throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: i */
            public Object mo29298i(Builder<?> builder, int index) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: j */
            public void mo29299j(final Builder<?> builder, final Object value) {
                this.f37645e.mo29334j(builder, value);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: k */
            public int mo29300k(Builder<?> builder) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: l */
            public Object mo29301l(final GeneratedMessageV3 message, final int index) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: m */
            public Object mo29302m(final GeneratedMessageV3 message) {
                return mo29291b(message);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: n */
            public Message.Builder mo29303n(Builder<?> builder, int index) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            public Message.Builder newBuilder() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: o */
            public Message.Builder mo29304o(Builder<?> builder) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$j */
        /* loaded from: classes6.dex */
        public static final class C6774j extends C6773i {

            /* renamed from: f */
            public final java.lang.reflect.Method f37654f;

            /* renamed from: g */
            public final java.lang.reflect.Method f37655g;

            public C6774j(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f37654f = GeneratedMessageV3.getMethodOrDie(this.f37641a, "newBuilder", new Class[0]);
                this.f37655g = GeneratedMessageV3.getMethodOrDie(builderClass, "get" + camelCaseName + "Builder", new Class[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: j */
            public void mo29299j(final Builder<?> builder, final Object value) {
                super.mo29299j(builder, m29336q(value));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            public Message.Builder newBuilder() {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f37654f, null, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: o */
            public Message.Builder mo29304o(Builder<?> builder) {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f37655g, builder, new Object[0]);
            }

            /* renamed from: q */
            public final Object m29336q(final Object value) {
                return this.f37641a.isInstance(value) ? value : ((Message.Builder) GeneratedMessageV3.invokeOrDie(this.f37654f, null, new Object[0])).mergeFrom((Message) value).buildPartial();
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$k */
        /* loaded from: classes6.dex */
        public static final class C6775k extends C6773i {

            /* renamed from: f */
            public final java.lang.reflect.Method f37656f;

            /* renamed from: g */
            public final java.lang.reflect.Method f37657g;

            public C6775k(final Descriptors.FieldDescriptor descriptor, final String camelCaseName, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass, final String containingOneofCamelCaseName) {
                super(descriptor, camelCaseName, messageClass, builderClass, containingOneofCamelCaseName);
                this.f37656f = GeneratedMessageV3.getMethodOrDie(messageClass, "get" + camelCaseName + C6883t.f38150d, new Class[0]);
                this.f37657g = GeneratedMessageV3.getMethodOrDie(builderClass, ExtensionNamespaceContext.EXSLT_SET_PREFIX + camelCaseName + C6883t.f38150d, ByteString.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: j */
            public void mo29299j(Builder<?> builder, Object value) {
                if (value instanceof ByteString) {
                    GeneratedMessageV3.invokeOrDie(this.f37657g, builder, value);
                } else {
                    super.mo29299j(builder, value);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.C6773i, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6765a
            /* renamed from: m */
            public Object mo29302m(final GeneratedMessageV3 message) {
                return GeneratedMessageV3.invokeOrDie(this.f37656f, message, new Object[0]);
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$l */
        /* loaded from: classes6.dex */
        public static class C6776l implements InterfaceC6767c {

            /* renamed from: a */
            public final Descriptors.FieldDescriptor f37658a;

            public C6776l(final Descriptors.Descriptor descriptor, final int oneofIndex) {
                this.f37658a = descriptor.getOneofs().get(oneofIndex).getFields().get(0);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: a */
            public void mo29309a(final Builder<?> builder) {
                builder.clearField(this.f37658a);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: b */
            public Descriptors.FieldDescriptor mo29310b(final GeneratedMessageV3 message) {
                if (message.hasField(this.f37658a)) {
                    return this.f37658a;
                }
                return null;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: c */
            public Descriptors.FieldDescriptor mo29311c(Builder<?> builder) {
                if (builder.hasField(this.f37658a)) {
                    return this.f37658a;
                }
                return null;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: d */
            public boolean mo29312d(final GeneratedMessageV3 message) {
                return message.hasField(this.f37658a);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.InterfaceC6767c
            /* renamed from: e */
            public boolean mo29313e(Builder<?> builder) {
                return builder.hasField(this.f37658a);
            }
        }

        public FieldAccessorTable(final Descriptors.Descriptor descriptor, final String[] camelCaseNames, final Class<? extends GeneratedMessageV3> messageClass, final Class<? extends Builder<?>> builderClass) {
            this(descriptor, camelCaseNames);
            ensureFieldAccessorsInitialized(messageClass, builderClass);
        }

        /* renamed from: d */
        public final InterfaceC6765a m29288d(final Descriptors.FieldDescriptor field) {
            if (field.getContainingType() != this.f37602a) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
            if (field.isExtension()) {
                throw new IllegalArgumentException("This type does not have extensions.");
            }
            return this.f37603b[field.getIndex()];
        }

        /* renamed from: e */
        public final InterfaceC6767c m29289e(final Descriptors.OneofDescriptor oneof) {
            if (oneof.getContainingType() == this.f37602a) {
                return this.f37605d[oneof.getIndex()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        public FieldAccessorTable ensureFieldAccessorsInitialized(Class<? extends GeneratedMessageV3> messageClass, Class<? extends Builder<?>> builderClass) {
            if (this.f37606e) {
                return this;
            }
            synchronized (this) {
                if (this.f37606e) {
                    return this;
                }
                int length = this.f37603b.length;
                int i = 0;
                while (true) {
                    String str = null;
                    if (i >= length) {
                        break;
                    }
                    Descriptors.FieldDescriptor fieldDescriptor = this.f37602a.getFields().get(i);
                    if (fieldDescriptor.getContainingOneof() != null) {
                        int index = fieldDescriptor.getContainingOneof().getIndex() + length;
                        String[] strArr = this.f37604c;
                        if (index < strArr.length) {
                            str = strArr[index];
                        }
                    }
                    String str2 = str;
                    if (fieldDescriptor.isRepeated()) {
                        if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                            if (fieldDescriptor.isMapField()) {
                                this.f37603b[i] = new C6766b(fieldDescriptor, messageClass);
                            } else {
                                this.f37603b[i] = new C6771g(fieldDescriptor, this.f37604c[i], messageClass, builderClass);
                            }
                        } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                            this.f37603b[i] = new C6769e(fieldDescriptor, this.f37604c[i], messageClass, builderClass);
                        } else {
                            this.f37603b[i] = new C6770f(fieldDescriptor, this.f37604c[i], messageClass, builderClass);
                        }
                    } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        this.f37603b[i] = new C6774j(fieldDescriptor, this.f37604c[i], messageClass, builderClass, str2);
                    } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                        this.f37603b[i] = new C6772h(fieldDescriptor, this.f37604c[i], messageClass, builderClass, str2);
                    } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.STRING) {
                        this.f37603b[i] = new C6775k(fieldDescriptor, this.f37604c[i], messageClass, builderClass, str2);
                    } else {
                        this.f37603b[i] = new C6773i(fieldDescriptor, this.f37604c[i], messageClass, builderClass, str2);
                    }
                    i++;
                }
                for (int i2 = 0; i2 < this.f37602a.getOneofs().size(); i2++) {
                    if (i2 < this.f37602a.getRealOneofs().size()) {
                        this.f37605d[i2] = new C6768d(this.f37602a, i2, this.f37604c[i2 + length], messageClass, builderClass);
                    } else {
                        this.f37605d[i2] = new C6776l(this.f37602a, i2);
                    }
                }
                this.f37606e = true;
                this.f37604c = null;
                return this;
            }
        }

        public FieldAccessorTable(final Descriptors.Descriptor descriptor, final String[] camelCaseNames) {
            this.f37602a = descriptor;
            this.f37604c = camelCaseNames;
            this.f37603b = new InterfaceC6765a[descriptor.getFields().size()];
            this.f37605d = new InterfaceC6767c[descriptor.getOneofs().size()];
            this.f37606e = false;
        }
    }

    public static <ListT extends Internal.ProtobufList<?>> ListT makeMutableCopy(ListT listt, int i) {
        int size = listt.size();
        if (i <= size) {
            i = size * 2;
        }
        if (i <= 0) {
            i = 10;
        }
        return (ListT) listt.mutableCopyWithCapacity2(i);
    }

    public static Internal.LongList mutableCopy(Internal.LongList list) {
        return (Internal.LongList) makeMutableCopy(list);
    }

    public GeneratedMessageV3(Builder<?> builder) {
        this.unknownFields = builder.getUnknownFields();
    }

    public static Internal.FloatList mutableCopy(Internal.FloatList list) {
        return (Internal.FloatList) makeMutableCopy(list);
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

    public static Internal.DoubleList mutableCopy(Internal.DoubleList list) {
        return (Internal.DoubleList) makeMutableCopy(list);
    }

    public static Internal.BooleanList mutableCopy(Internal.BooleanList list) {
        return (Internal.BooleanList) makeMutableCopy(list);
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
