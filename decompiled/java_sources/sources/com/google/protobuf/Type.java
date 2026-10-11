package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Field;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Option;
import com.google.protobuf.SourceContext;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes6.dex */
public final class Type extends GeneratedMessageV3 implements TypeOrBuilder {
    public static final int EDITION_FIELD_NUMBER = 7;
    public static final int FIELDS_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ONEOFS_FIELD_NUMBER = 3;
    public static final int OPTIONS_FIELD_NUMBER = 4;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 5;
    public static final int SYNTAX_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private volatile Object edition_;
    private List<Field> fields_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private LazyStringArrayList oneofs_;
    private List<Option> options_;
    private SourceContext sourceContext_;
    private int syntax_;
    private static final Type DEFAULT_INSTANCE = new Type();
    private static final Parser<Type> PARSER = new C6831a();

    /* loaded from: classes6.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TypeOrBuilder {

        /* renamed from: i */
        public int f37891i;

        /* renamed from: j */
        public Object f37892j;

        /* renamed from: k */
        public List<Field> f37893k;

        /* renamed from: l */
        public RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> f37894l;

        /* renamed from: m */
        public LazyStringArrayList f37895m;

        /* renamed from: n */
        public List<Option> f37896n;

        /* renamed from: o */
        public RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> f37897o;

        /* renamed from: p */
        public SourceContext f37898p;

        /* renamed from: q */
        public SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> f37899q;

        /* renamed from: r */
        public int f37900r;

        /* renamed from: s */
        public Object f37901s;

        public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C6831a c6831a) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TypeProto.f37902a;
        }

        public Builder addAllFields(Iterable<? extends Field> values) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                m29588j();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f37893k);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public Builder addAllOneofs(Iterable<String> values) {
            m29589k();
            AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f37895m);
            this.f37891i |= 4;
            onChanged();
            return this;
        }

        public Builder addAllOptions(Iterable<? extends Option> values) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                m29590l();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f37896n);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public Builder addFields(Field value) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29588j();
                this.f37893k.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Field.Builder addFieldsBuilder() {
            return m29591m().addBuilder(Field.getDefaultInstance());
        }

        public Builder addOneofs(String value) {
            value.getClass();
            m29589k();
            this.f37895m.add(value);
            this.f37891i |= 4;
            onChanged();
            return this;
        }

        public Builder addOneofsBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            m29589k();
            this.f37895m.add(value);
            this.f37891i |= 4;
            onChanged();
            return this;
        }

        public Builder addOptions(Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29590l();
                this.f37896n.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Option.Builder addOptionsBuilder() {
            return m29592n().addBuilder(Option.getDefaultInstance());
        }

        public Builder clearEdition() {
            this.f37901s = Type.getDefaultInstance().getEdition();
            this.f37891i &= -65;
            onChanged();
            return this;
        }

        public Builder clearFields() {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                this.f37893k = Collections.emptyList();
                this.f37891i &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearName() {
            this.f37892j = Type.getDefaultInstance().getName();
            this.f37891i &= -2;
            onChanged();
            return this;
        }

        public Builder clearOneofs() {
            this.f37895m = LazyStringArrayList.emptyList();
            this.f37891i &= -5;
            onChanged();
            return this;
        }

        public Builder clearOptions() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                this.f37896n = Collections.emptyList();
                this.f37891i &= -9;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearSourceContext() {
            this.f37891i &= -17;
            this.f37898p = null;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37899q;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.dispose();
                this.f37899q = null;
            }
            onChanged();
            return this;
        }

        public Builder clearSyntax() {
            this.f37891i &= -33;
            this.f37900r = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return TypeProto.f37902a;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public String getEdition() {
            Object obj = this.f37901s;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f37901s = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public ByteString getEditionBytes() {
            Object obj = this.f37901s;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f37901s = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public Field getFields(int index) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            return repeatedFieldBuilderV3 == null ? this.f37893k.get(index) : repeatedFieldBuilderV3.getMessage(index);
        }

        public Field.Builder getFieldsBuilder(int index) {
            return m29591m().getBuilder(index);
        }

        public List<Field.Builder> getFieldsBuilderList() {
            return m29591m().getBuilderList();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public int getFieldsCount() {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            return repeatedFieldBuilderV3 == null ? this.f37893k.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public List<Field> getFieldsList() {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f37893k) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public FieldOrBuilder getFieldsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            return repeatedFieldBuilderV3 == null ? this.f37893k.get(index) : repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public List<? extends FieldOrBuilder> getFieldsOrBuilderList() {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f37893k);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public String getName() {
            Object obj = this.f37892j;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f37892j = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f37892j;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f37892j = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public String getOneofs(int index) {
            return this.f37895m.get(index);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public ByteString getOneofsBytes(int index) {
            return this.f37895m.getByteString(index);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public int getOneofsCount() {
            return this.f37895m.size();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public Option getOptions(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            return repeatedFieldBuilderV3 == null ? this.f37896n.get(index) : repeatedFieldBuilderV3.getMessage(index);
        }

        public Option.Builder getOptionsBuilder(int index) {
            return m29592n().getBuilder(index);
        }

        public List<Option.Builder> getOptionsBuilderList() {
            return m29592n().getBuilderList();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public int getOptionsCount() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            return repeatedFieldBuilderV3 == null ? this.f37896n.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public List<Option> getOptionsList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f37896n) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            return repeatedFieldBuilderV3 == null ? this.f37896n.get(index) : repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f37896n);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public SourceContext getSourceContext() {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37899q;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            SourceContext sourceContext = this.f37898p;
            return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
        }

        public SourceContext.Builder getSourceContextBuilder() {
            this.f37891i |= 16;
            onChanged();
            return m29593o().getBuilder();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public SourceContextOrBuilder getSourceContextOrBuilder() {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37899q;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            SourceContext sourceContext = this.f37898p;
            return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public Syntax getSyntax() {
            Syntax forNumber = Syntax.forNumber(this.f37900r);
            return forNumber == null ? Syntax.UNRECOGNIZED : forNumber;
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public int getSyntaxValue() {
            return this.f37900r;
        }

        /* renamed from: h */
        public final void m29586h(Type result) {
            int i;
            int i2 = this.f37891i;
            if ((i2 & 1) != 0) {
                result.name_ = this.f37892j;
            }
            if ((i2 & 4) != 0) {
                this.f37895m.makeImmutable();
                result.oneofs_ = this.f37895m;
            }
            if ((i2 & 16) != 0) {
                SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37899q;
                result.sourceContext_ = singleFieldBuilderV3 == null ? this.f37898p : singleFieldBuilderV3.build();
                i = 1;
            } else {
                i = 0;
            }
            if ((i2 & 32) != 0) {
                result.syntax_ = this.f37900r;
            }
            if ((i2 & 64) != 0) {
                result.edition_ = this.f37901s;
            }
            Type.access$1076(result, i);
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public boolean hasSourceContext() {
            return (this.f37891i & 16) != 0;
        }

        /* renamed from: i */
        public final void m29587i(Type result) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.f37891i & 2) != 0) {
                    this.f37893k = Collections.unmodifiableList(this.f37893k);
                    this.f37891i &= -3;
                }
                result.fields_ = this.f37893k;
            } else {
                result.fields_ = repeatedFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f37897o;
            if (repeatedFieldBuilderV32 != null) {
                result.options_ = repeatedFieldBuilderV32.build();
                return;
            }
            if ((this.f37891i & 8) != 0) {
                this.f37896n = Collections.unmodifiableList(this.f37896n);
                this.f37891i &= -9;
            }
            result.options_ = this.f37896n;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TypeProto.f37903b.ensureFieldAccessorsInitialized(Type.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: j */
        public final void m29588j() {
            if ((this.f37891i & 2) == 0) {
                this.f37893k = new ArrayList(this.f37893k);
                this.f37891i |= 2;
            }
        }

        /* renamed from: k */
        public final void m29589k() {
            if (!this.f37895m.isModifiable()) {
                this.f37895m = new LazyStringArrayList((LazyStringList) this.f37895m);
            }
            this.f37891i |= 4;
        }

        /* renamed from: l */
        public final void m29590l() {
            if ((this.f37891i & 8) == 0) {
                this.f37896n = new ArrayList(this.f37896n);
                this.f37891i |= 8;
            }
        }

        /* renamed from: m */
        public final RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> m29591m() {
            if (this.f37894l == null) {
                this.f37894l = new RepeatedFieldBuilderV3<>(this.f37893k, (this.f37891i & 2) != 0, getParentForChildren(), isClean());
                this.f37893k = null;
            }
            return this.f37894l;
        }

        public Builder mergeSourceContext(SourceContext value) {
            SourceContext sourceContext;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37899q;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.mergeFrom(value);
            } else if ((this.f37891i & 16) == 0 || (sourceContext = this.f37898p) == null || sourceContext == SourceContext.getDefaultInstance()) {
                this.f37898p = value;
            } else {
                getSourceContextBuilder().mergeFrom(value);
            }
            if (this.f37898p != null) {
                this.f37891i |= 16;
                onChanged();
            }
            return this;
        }

        /* renamed from: n */
        public final RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> m29592n() {
            if (this.f37897o == null) {
                this.f37897o = new RepeatedFieldBuilderV3<>(this.f37896n, (this.f37891i & 8) != 0, getParentForChildren(), isClean());
                this.f37896n = null;
            }
            return this.f37897o;
        }

        /* renamed from: o */
        public final SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> m29593o() {
            if (this.f37899q == null) {
                this.f37899q = new SingleFieldBuilderV3<>(getSourceContext(), getParentForChildren(), isClean());
                this.f37898p = null;
            }
            return this.f37899q;
        }

        /* renamed from: p */
        public final void m29594p() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m29591m();
                m29592n();
                m29593o();
            }
        }

        public Builder removeFields(int index) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                m29588j();
                this.f37893k.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public Builder removeOptions(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                m29590l();
                this.f37896n.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public Builder setEdition(String value) {
            value.getClass();
            this.f37901s = value;
            this.f37891i |= 64;
            onChanged();
            return this;
        }

        public Builder setEditionBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f37901s = value;
            this.f37891i |= 64;
            onChanged();
            return this;
        }

        public Builder setFields(int index, Field value) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29588j();
                this.f37893k.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public Builder setName(String value) {
            value.getClass();
            this.f37892j = value;
            this.f37891i |= 1;
            onChanged();
            return this;
        }

        public Builder setNameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f37892j = value;
            this.f37891i |= 1;
            onChanged();
            return this;
        }

        public Builder setOneofs(int index, String value) {
            value.getClass();
            m29589k();
            this.f37895m.set(index, value);
            this.f37891i |= 4;
            onChanged();
            return this;
        }

        public Builder setOptions(int index, Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29590l();
                this.f37896n.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public Builder setSourceContext(SourceContext value) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37899q;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.f37898p = value;
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            this.f37891i |= 16;
            onChanged();
            return this;
        }

        public Builder setSyntax(Syntax value) {
            value.getClass();
            this.f37891i |= 32;
            this.f37900r = value.getNumber();
            onChanged();
            return this;
        }

        public Builder setSyntaxValue(int value) {
            this.f37900r = value;
            this.f37891i |= 32;
            onChanged();
            return this;
        }

        public /* synthetic */ Builder(C6831a c6831a) {
            this();
        }

        @Override // com.google.protobuf.TypeOrBuilder
        public ProtocolStringList getOneofsList() {
            this.f37895m.makeImmutable();
            return this.f37895m;
        }

        public Builder() {
            this.f37892j = "";
            this.f37893k = Collections.emptyList();
            this.f37895m = LazyStringArrayList.emptyList();
            this.f37896n = Collections.emptyList();
            this.f37900r = 0;
            this.f37901s = "";
            m29594p();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (Builder) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Type build() {
            Type buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Type buildPartial() {
            Type type = new Type(this, null);
            m29587i(type);
            if (this.f37891i != 0) {
                m29586h(type);
            }
            onBuilt();
            return type;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor field) {
            return (Builder) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Type getDefaultInstanceForType() {
            return Type.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor field, Object value) {
            return (Builder) super.setField(field, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor field, int index, Object value) {
            return (Builder) super.setRepeatedField(field, index, value);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public final Builder setUnknownFields(final UnknownFieldSet unknownFields) {
            return (Builder) super.setUnknownFields(unknownFields);
        }

        public Field.Builder addFieldsBuilder(int index) {
            return m29591m().addBuilder(index, Field.getDefaultInstance());
        }

        public Option.Builder addOptionsBuilder(int index) {
            return m29592n().addBuilder(index, Option.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneof) {
            return (Builder) super.clearOneof(oneof);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public final Builder mergeUnknownFields(final UnknownFieldSet unknownFields) {
            return (Builder) super.mergeUnknownFields(unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.f37891i = 0;
            this.f37892j = "";
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                this.f37893k = Collections.emptyList();
            } else {
                this.f37893k = null;
                repeatedFieldBuilderV3.clear();
            }
            this.f37891i &= -3;
            this.f37895m = LazyStringArrayList.emptyList();
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f37897o;
            if (repeatedFieldBuilderV32 == null) {
                this.f37896n = Collections.emptyList();
            } else {
                this.f37896n = null;
                repeatedFieldBuilderV32.clear();
            }
            this.f37891i &= -9;
            this.f37898p = null;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37899q;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.dispose();
                this.f37899q = null;
            }
            this.f37900r = 0;
            this.f37901s = "";
            return this;
        }

        public Builder addFields(int index, Field value) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29588j();
                this.f37893k.add(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, value);
            }
            return this;
        }

        public Builder addOptions(int index, Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29590l();
                this.f37896n.add(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public Builder mo72165clone() {
            return (Builder) super.mo72165clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(Message other) {
            if (other instanceof Type) {
                return mergeFrom((Type) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public Builder setFields(int index, Field.Builder builderForValue) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                m29588j();
                this.f37893k.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder setOptions(int index, Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                m29590l();
                this.f37896n.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder setSourceContext(SourceContext.Builder builderForValue) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37899q;
            if (singleFieldBuilderV3 == null) {
                this.f37898p = builderForValue.build();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            this.f37891i |= 16;
            onChanged();
            return this;
        }

        public Builder mergeFrom(Type other) {
            if (other == Type.getDefaultInstance()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f37892j = other.name_;
                this.f37891i |= 1;
                onChanged();
            }
            if (this.f37894l == null) {
                if (!other.fields_.isEmpty()) {
                    if (this.f37893k.isEmpty()) {
                        this.f37893k = other.fields_;
                        this.f37891i &= -3;
                    } else {
                        m29588j();
                        this.f37893k.addAll(other.fields_);
                    }
                    onChanged();
                }
            } else if (!other.fields_.isEmpty()) {
                if (this.f37894l.isEmpty()) {
                    this.f37894l.dispose();
                    this.f37894l = null;
                    this.f37893k = other.fields_;
                    this.f37891i &= -3;
                    this.f37894l = GeneratedMessageV3.alwaysUseFieldBuilders ? m29591m() : null;
                } else {
                    this.f37894l.addAllMessages(other.fields_);
                }
            }
            if (!other.oneofs_.isEmpty()) {
                if (this.f37895m.isEmpty()) {
                    this.f37895m = other.oneofs_;
                    this.f37891i |= 4;
                } else {
                    m29589k();
                    this.f37895m.addAll(other.oneofs_);
                }
                onChanged();
            }
            if (this.f37897o == null) {
                if (!other.options_.isEmpty()) {
                    if (this.f37896n.isEmpty()) {
                        this.f37896n = other.options_;
                        this.f37891i &= -9;
                    } else {
                        m29590l();
                        this.f37896n.addAll(other.options_);
                    }
                    onChanged();
                }
            } else if (!other.options_.isEmpty()) {
                if (this.f37897o.isEmpty()) {
                    this.f37897o.dispose();
                    this.f37897o = null;
                    this.f37896n = other.options_;
                    this.f37891i &= -9;
                    this.f37897o = GeneratedMessageV3.alwaysUseFieldBuilders ? m29592n() : null;
                } else {
                    this.f37897o.addAllMessages(other.options_);
                }
            }
            if (other.hasSourceContext()) {
                mergeSourceContext(other.getSourceContext());
            }
            if (other.syntax_ != 0) {
                setSyntaxValue(other.getSyntaxValue());
            }
            if (!other.getEdition().isEmpty()) {
                this.f37901s = other.edition_;
                this.f37891i |= 64;
                onChanged();
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public Builder(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.f37892j = "";
            this.f37893k = Collections.emptyList();
            this.f37895m = LazyStringArrayList.emptyList();
            this.f37896n = Collections.emptyList();
            this.f37900r = 0;
            this.f37901s = "";
            m29594p();
        }

        public Builder addFields(Field.Builder builderForValue) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                m29588j();
                this.f37893k.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public Builder addOptions(Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                m29590l();
                this.f37896n.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public Builder addFields(int index, Field.Builder builderForValue) {
            RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
            if (repeatedFieldBuilderV3 == null) {
                m29588j();
                this.f37893k.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder addOptions(int index, Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37897o;
            if (repeatedFieldBuilderV3 == null) {
                m29590l();
                this.f37896n.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Builder mergeFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            extensionRegistry.getClass();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = input.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.f37892j = input.readStringRequireUtf8();
                                this.f37891i |= 1;
                            } else if (readTag == 18) {
                                Field field = (Field) input.readMessage(Field.parser(), extensionRegistry);
                                RepeatedFieldBuilderV3<Field, Field.Builder, FieldOrBuilder> repeatedFieldBuilderV3 = this.f37894l;
                                if (repeatedFieldBuilderV3 == null) {
                                    m29588j();
                                    this.f37893k.add(field);
                                } else {
                                    repeatedFieldBuilderV3.addMessage(field);
                                }
                            } else if (readTag == 26) {
                                String readStringRequireUtf8 = input.readStringRequireUtf8();
                                m29589k();
                                this.f37895m.add(readStringRequireUtf8);
                            } else if (readTag == 34) {
                                Option option = (Option) input.readMessage(Option.parser(), extensionRegistry);
                                RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f37897o;
                                if (repeatedFieldBuilderV32 == null) {
                                    m29590l();
                                    this.f37896n.add(option);
                                } else {
                                    repeatedFieldBuilderV32.addMessage(option);
                                }
                            } else if (readTag == 42) {
                                input.readMessage(m29593o().getBuilder(), extensionRegistry);
                                this.f37891i |= 16;
                            } else if (readTag == 48) {
                                this.f37900r = input.readEnum();
                                this.f37891i |= 32;
                            } else if (readTag != 58) {
                                if (!super.parseUnknownField(input, extensionRegistry, readTag)) {
                                }
                            } else {
                                this.f37901s = input.readStringRequireUtf8();
                                this.f37891i |= 64;
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.unwrapIOException();
                    }
                } finally {
                    onChanged();
                }
            }
            return this;
        }
    }

    /* renamed from: com.google.protobuf.Type$a */
    /* loaded from: classes6.dex */
    public class C6831a extends AbstractParser<Type> {
        @Override // com.google.protobuf.Parser
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Type parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            Builder newBuilder = Type.newBuilder();
            try {
                newBuilder.mergeFrom(input, extensionRegistry);
                return newBuilder.buildPartial();
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(newBuilder.buildPartial());
            } catch (UninitializedMessageException e2) {
                throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(newBuilder.buildPartial());
            } catch (IOException e3) {
                throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(newBuilder.buildPartial());
            }
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseDelimitedFrom(InputStream input) throws InvalidProtocolBufferException {
            return super.parseDelimitedFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return super.parseFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialDelimitedFrom(InputStream input) throws InvalidProtocolBufferException {
            return super.parsePartialDelimitedFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(ByteString data) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseDelimitedFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialDelimitedFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(CodedInputStream input) throws InvalidProtocolBufferException {
            return super.parseFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(CodedInputStream input) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(InputStream input) throws InvalidProtocolBufferException {
            return super.parseFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(InputStream input) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(input);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(input, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return super.parseFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(byte[] data) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data, off, len);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return super.parseFrom(data);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data, off, len, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
            return super.parseFrom(data, off, len);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parsePartialFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parsePartialFrom(data, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data, int off, int len, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, off, len, extensionRegistry);
        }

        @Override // com.google.protobuf.AbstractParser, com.google.protobuf.Parser
        public /* bridge */ /* synthetic */ Object parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return super.parseFrom(data, extensionRegistry);
        }
    }

    public /* synthetic */ Type(GeneratedMessageV3.Builder builder, C6831a c6831a) {
        this(builder);
    }

    public static /* synthetic */ int access$1076(Type type, int i) {
        int i2 = i | type.bitField0_;
        type.bitField0_ = i2;
        return i2;
    }

    public static Type getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return TypeProto.f37902a;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Type parseDelimitedFrom(InputStream input) throws IOException {
        return (Type) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static Type parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<Type> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Type)) {
            return super.equals(obj);
        }
        Type type = (Type) obj;
        if (getName().equals(type.getName()) && getFieldsList().equals(type.getFieldsList()) && getOneofsList().equals(type.getOneofsList()) && getOptionsList().equals(type.getOptionsList()) && hasSourceContext() == type.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(type.getSourceContext())) && this.syntax_ == type.syntax_ && getEdition().equals(type.getEdition()) && getUnknownFields().equals(type.getUnknownFields());
        }
        return false;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public String getEdition() {
        Object obj = this.edition_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.edition_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public ByteString getEditionBytes() {
        Object obj = this.edition_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.edition_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public Field getFields(int index) {
        return this.fields_.get(index);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public int getFieldsCount() {
        return this.fields_.size();
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public List<Field> getFieldsList() {
        return this.fields_;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public FieldOrBuilder getFieldsOrBuilder(int index) {
        return this.fields_.get(index);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public List<? extends FieldOrBuilder> getFieldsOrBuilderList() {
        return this.fields_;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public String getOneofs(int index) {
        return this.oneofs_.get(index);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public ByteString getOneofsBytes(int index) {
        return this.oneofs_.getByteString(index);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public int getOneofsCount() {
        return this.oneofs_.size();
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public Option getOptions(int index) {
        return this.options_.get(index);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public List<Option> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int index) {
        return this.options_.get(index);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Type> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i2 = 0; i2 < this.fields_.size(); i2++) {
            computeStringSize += CodedOutputStream.computeMessageSize(2, this.fields_.get(i2));
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.oneofs_.size(); i4++) {
            i3 += GeneratedMessageV3.computeStringSizeNoTag(this.oneofs_.getRaw(i4));
        }
        int size = computeStringSize + i3 + (getOneofsList().size() * 1);
        for (int i5 = 0; i5 < this.options_.size(); i5++) {
            size += CodedOutputStream.computeMessageSize(4, this.options_.get(i5));
        }
        if ((this.bitField0_ & 1) != 0) {
            size += CodedOutputStream.computeMessageSize(5, getSourceContext());
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            size += CodedOutputStream.computeEnumSize(6, this.syntax_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.edition_)) {
            size += GeneratedMessageV3.computeStringSize(7, this.edition_);
        }
        int serializedSize = size + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public SourceContext getSourceContext() {
        SourceContext sourceContext = this.sourceContext_;
        return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public SourceContextOrBuilder getSourceContextOrBuilder() {
        SourceContext sourceContext = this.sourceContext_;
        return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public Syntax getSyntax() {
        Syntax forNumber = Syntax.forNumber(this.syntax_);
        return forNumber == null ? Syntax.UNRECOGNIZED : forNumber;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public int getSyntaxValue() {
        return this.syntax_;
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public boolean hasSourceContext() {
        return (this.bitField0_ & 1) != 0;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getFieldsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getFieldsList().hashCode();
        }
        if (getOneofsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getOneofsList().hashCode();
        }
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getOptionsList().hashCode();
        }
        if (hasSourceContext()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getSourceContext().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 6) * 53) + this.syntax_) * 37) + 7) * 53) + getEdition().hashCode()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return TypeProto.f37903b.ensureFieldAccessorsInitialized(Type.class, Builder.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unused) {
        return new Type();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(output, 1, this.name_);
        }
        for (int i = 0; i < this.fields_.size(); i++) {
            output.writeMessage(2, this.fields_.get(i));
        }
        for (int i2 = 0; i2 < this.oneofs_.size(); i2++) {
            GeneratedMessageV3.writeString(output, 3, this.oneofs_.getRaw(i2));
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            output.writeMessage(4, this.options_.get(i3));
        }
        if ((this.bitField0_ & 1) != 0) {
            output.writeMessage(5, getSourceContext());
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            output.writeEnum(6, this.syntax_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.edition_)) {
            GeneratedMessageV3.writeString(output, 7, this.edition_);
        }
        getUnknownFields().writeTo(output);
    }

    private Type(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.name_ = "";
        this.oneofs_ = LazyStringArrayList.emptyList();
        this.syntax_ = 0;
        this.edition_ = "";
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Builder newBuilder(Type prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static Type parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.TypeOrBuilder
    public ProtocolStringList getOneofsList() {
        return this.oneofs_;
    }

    public static Type parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Type) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static Type parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Type getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        C6831a c6831a = null;
        return this == DEFAULT_INSTANCE ? new Builder(c6831a) : new Builder(c6831a).mergeFrom(this);
    }

    public static Type parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Type parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new Builder(parent, null);
    }

    public static Type parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static Type parseFrom(InputStream input) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    private Type() {
        this.name_ = "";
        this.oneofs_ = LazyStringArrayList.emptyList();
        this.syntax_ = 0;
        this.edition_ = "";
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.fields_ = Collections.emptyList();
        this.oneofs_ = LazyStringArrayList.emptyList();
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
        this.edition_ = "";
    }

    public static Type parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static Type parseFrom(CodedInputStream input) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Type parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
