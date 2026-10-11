package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.EnumValue;
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
public final class Enum extends GeneratedMessageV3 implements EnumOrBuilder {
    public static final int EDITION_FIELD_NUMBER = 6;
    public static final int ENUMVALUE_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 4;
    public static final int SYNTAX_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private volatile Object edition_;
    private List<EnumValue> enumvalue_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Option> options_;
    private SourceContext sourceContext_;
    private int syntax_;
    private static final Enum DEFAULT_INSTANCE = new Enum();
    private static final Parser<Enum> PARSER = new C6728a();

    /* loaded from: classes6.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements EnumOrBuilder {

        /* renamed from: i */
        public int f37395i;

        /* renamed from: j */
        public Object f37396j;

        /* renamed from: k */
        public List<EnumValue> f37397k;

        /* renamed from: l */
        public RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> f37398l;

        /* renamed from: m */
        public List<Option> f37399m;

        /* renamed from: n */
        public RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> f37400n;

        /* renamed from: o */
        public SourceContext f37401o;

        /* renamed from: p */
        public SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> f37402p;

        /* renamed from: q */
        public int f37403q;

        /* renamed from: r */
        public Object f37404r;

        public /* synthetic */ Builder(C6728a c6728a) {
            this();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return TypeProto.f37906e;
        }

        public Builder addAllEnumvalue(Iterable<? extends EnumValue> values) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                m29059j();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f37397k);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public Builder addAllOptions(Iterable<? extends Option> values) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                m29060k();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f37399m);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public Builder addEnumvalue(EnumValue value) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29059j();
                this.f37397k.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public EnumValue.Builder addEnumvalueBuilder() {
            return m29061l().addBuilder(EnumValue.getDefaultInstance());
        }

        public Builder addOptions(Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29060k();
                this.f37399m.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Option.Builder addOptionsBuilder() {
            return m29062m().addBuilder(Option.getDefaultInstance());
        }

        public Builder clearEdition() {
            this.f37404r = Enum.getDefaultInstance().getEdition();
            this.f37395i &= -33;
            onChanged();
            return this;
        }

        public Builder clearEnumvalue() {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                this.f37397k = Collections.emptyList();
                this.f37395i &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearName() {
            this.f37396j = Enum.getDefaultInstance().getName();
            this.f37395i &= -2;
            onChanged();
            return this;
        }

        public Builder clearOptions() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                this.f37399m = Collections.emptyList();
                this.f37395i &= -5;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearSourceContext() {
            this.f37395i &= -9;
            this.f37401o = null;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37402p;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.dispose();
                this.f37402p = null;
            }
            onChanged();
            return this;
        }

        public Builder clearSyntax() {
            this.f37395i &= -17;
            this.f37403q = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return TypeProto.f37906e;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public String getEdition() {
            Object obj = this.f37404r;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f37404r = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public ByteString getEditionBytes() {
            Object obj = this.f37404r;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f37404r = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public EnumValue getEnumvalue(int index) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            return repeatedFieldBuilderV3 == null ? this.f37397k.get(index) : repeatedFieldBuilderV3.getMessage(index);
        }

        public EnumValue.Builder getEnumvalueBuilder(int index) {
            return m29061l().getBuilder(index);
        }

        public List<EnumValue.Builder> getEnumvalueBuilderList() {
            return m29061l().getBuilderList();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public int getEnumvalueCount() {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            return repeatedFieldBuilderV3 == null ? this.f37397k.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public List<EnumValue> getEnumvalueList() {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f37397k) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public EnumValueOrBuilder getEnumvalueOrBuilder(int index) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            return repeatedFieldBuilderV3 == null ? this.f37397k.get(index) : repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public List<? extends EnumValueOrBuilder> getEnumvalueOrBuilderList() {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f37397k);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public String getName() {
            Object obj = this.f37396j;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f37396j = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f37396j;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f37396j = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public Option getOptions(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            return repeatedFieldBuilderV3 == null ? this.f37399m.get(index) : repeatedFieldBuilderV3.getMessage(index);
        }

        public Option.Builder getOptionsBuilder(int index) {
            return m29062m().getBuilder(index);
        }

        public List<Option.Builder> getOptionsBuilderList() {
            return m29062m().getBuilderList();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public int getOptionsCount() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            return repeatedFieldBuilderV3 == null ? this.f37399m.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public List<Option> getOptionsList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f37399m) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            return repeatedFieldBuilderV3 == null ? this.f37399m.get(index) : repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f37399m);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public SourceContext getSourceContext() {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37402p;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            SourceContext sourceContext = this.f37401o;
            return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
        }

        public SourceContext.Builder getSourceContextBuilder() {
            this.f37395i |= 8;
            onChanged();
            return m29063n().getBuilder();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public SourceContextOrBuilder getSourceContextOrBuilder() {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37402p;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            SourceContext sourceContext = this.f37401o;
            return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public Syntax getSyntax() {
            Syntax forNumber = Syntax.forNumber(this.f37403q);
            return forNumber == null ? Syntax.UNRECOGNIZED : forNumber;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public int getSyntaxValue() {
            return this.f37403q;
        }

        /* renamed from: h */
        public final void m29057h(Enum result) {
            int i;
            int i2 = this.f37395i;
            if ((i2 & 1) != 0) {
                result.name_ = this.f37396j;
            }
            if ((i2 & 8) != 0) {
                SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37402p;
                result.sourceContext_ = singleFieldBuilderV3 == null ? this.f37401o : singleFieldBuilderV3.build();
                i = 1;
            } else {
                i = 0;
            }
            if ((i2 & 16) != 0) {
                result.syntax_ = this.f37403q;
            }
            if ((i2 & 32) != 0) {
                result.edition_ = this.f37404r;
            }
            Enum.access$976(result, i);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public boolean hasSourceContext() {
            return (this.f37395i & 8) != 0;
        }

        /* renamed from: i */
        public final void m29058i(Enum result) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.f37395i & 2) != 0) {
                    this.f37397k = Collections.unmodifiableList(this.f37397k);
                    this.f37395i &= -3;
                }
                result.enumvalue_ = this.f37397k;
            } else {
                result.enumvalue_ = repeatedFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f37400n;
            if (repeatedFieldBuilderV32 != null) {
                result.options_ = repeatedFieldBuilderV32.build();
                return;
            }
            if ((this.f37395i & 4) != 0) {
                this.f37399m = Collections.unmodifiableList(this.f37399m);
                this.f37395i &= -5;
            }
            result.options_ = this.f37399m;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return TypeProto.f37907f.ensureFieldAccessorsInitialized(Enum.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: j */
        public final void m29059j() {
            if ((this.f37395i & 2) == 0) {
                this.f37397k = new ArrayList(this.f37397k);
                this.f37395i |= 2;
            }
        }

        /* renamed from: k */
        public final void m29060k() {
            if ((this.f37395i & 4) == 0) {
                this.f37399m = new ArrayList(this.f37399m);
                this.f37395i |= 4;
            }
        }

        /* renamed from: l */
        public final RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> m29061l() {
            if (this.f37398l == null) {
                this.f37398l = new RepeatedFieldBuilderV3<>(this.f37397k, (this.f37395i & 2) != 0, getParentForChildren(), isClean());
                this.f37397k = null;
            }
            return this.f37398l;
        }

        /* renamed from: m */
        public final RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> m29062m() {
            if (this.f37400n == null) {
                this.f37400n = new RepeatedFieldBuilderV3<>(this.f37399m, (this.f37395i & 4) != 0, getParentForChildren(), isClean());
                this.f37399m = null;
            }
            return this.f37400n;
        }

        public Builder mergeSourceContext(SourceContext value) {
            SourceContext sourceContext;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37402p;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.mergeFrom(value);
            } else if ((this.f37395i & 8) == 0 || (sourceContext = this.f37401o) == null || sourceContext == SourceContext.getDefaultInstance()) {
                this.f37401o = value;
            } else {
                getSourceContextBuilder().mergeFrom(value);
            }
            if (this.f37401o != null) {
                this.f37395i |= 8;
                onChanged();
            }
            return this;
        }

        /* renamed from: n */
        public final SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> m29063n() {
            if (this.f37402p == null) {
                this.f37402p = new SingleFieldBuilderV3<>(getSourceContext(), getParentForChildren(), isClean());
                this.f37401o = null;
            }
            return this.f37402p;
        }

        /* renamed from: o */
        public final void m29064o() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m29061l();
                m29062m();
                m29063n();
            }
        }

        public Builder removeEnumvalue(int index) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                m29059j();
                this.f37397k.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public Builder removeOptions(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                m29060k();
                this.f37399m.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public Builder setEdition(String value) {
            value.getClass();
            this.f37404r = value;
            this.f37395i |= 32;
            onChanged();
            return this;
        }

        public Builder setEditionBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f37404r = value;
            this.f37395i |= 32;
            onChanged();
            return this;
        }

        public Builder setEnumvalue(int index, EnumValue value) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29059j();
                this.f37397k.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public Builder setName(String value) {
            value.getClass();
            this.f37396j = value;
            this.f37395i |= 1;
            onChanged();
            return this;
        }

        public Builder setNameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f37396j = value;
            this.f37395i |= 1;
            onChanged();
            return this;
        }

        public Builder setOptions(int index, Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29060k();
                this.f37399m.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public Builder setSourceContext(SourceContext value) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37402p;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.f37401o = value;
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            this.f37395i |= 8;
            onChanged();
            return this;
        }

        public Builder setSyntax(Syntax value) {
            value.getClass();
            this.f37395i |= 16;
            this.f37403q = value.getNumber();
            onChanged();
            return this;
        }

        public Builder setSyntaxValue(int value) {
            this.f37403q = value;
            this.f37395i |= 16;
            onChanged();
            return this;
        }

        public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C6728a c6728a) {
            this(builderParent);
        }

        public Builder() {
            this.f37396j = "";
            this.f37397k = Collections.emptyList();
            this.f37399m = Collections.emptyList();
            this.f37403q = 0;
            this.f37404r = "";
            m29064o();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (Builder) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Enum build() {
            Enum buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Enum buildPartial() {
            Enum r0 = new Enum(this, null);
            m29058i(r0);
            if (this.f37395i != 0) {
                m29057h(r0);
            }
            onBuilt();
            return r0;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor field) {
            return (Builder) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Enum getDefaultInstanceForType() {
            return Enum.getDefaultInstance();
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

        public EnumValue.Builder addEnumvalueBuilder(int index) {
            return m29061l().addBuilder(index, EnumValue.getDefaultInstance());
        }

        public Option.Builder addOptionsBuilder(int index) {
            return m29062m().addBuilder(index, Option.getDefaultInstance());
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
            this.f37395i = 0;
            this.f37396j = "";
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                this.f37397k = Collections.emptyList();
            } else {
                this.f37397k = null;
                repeatedFieldBuilderV3.clear();
            }
            this.f37395i &= -3;
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f37400n;
            if (repeatedFieldBuilderV32 == null) {
                this.f37399m = Collections.emptyList();
            } else {
                this.f37399m = null;
                repeatedFieldBuilderV32.clear();
            }
            this.f37395i &= -5;
            this.f37401o = null;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37402p;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.dispose();
                this.f37402p = null;
            }
            this.f37403q = 0;
            this.f37404r = "";
            return this;
        }

        public Builder addEnumvalue(int index, EnumValue value) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29059j();
                this.f37397k.add(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, value);
            }
            return this;
        }

        public Builder addOptions(int index, Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29060k();
                this.f37399m.add(index, value);
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
            if (other instanceof Enum) {
                return mergeFrom((Enum) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public Builder setEnumvalue(int index, EnumValue.Builder builderForValue) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                m29059j();
                this.f37397k.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder setOptions(int index, Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                m29060k();
                this.f37399m.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder setSourceContext(SourceContext.Builder builderForValue) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f37402p;
            if (singleFieldBuilderV3 == null) {
                this.f37401o = builderForValue.build();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            this.f37395i |= 8;
            onChanged();
            return this;
        }

        public Builder(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.f37396j = "";
            this.f37397k = Collections.emptyList();
            this.f37399m = Collections.emptyList();
            this.f37403q = 0;
            this.f37404r = "";
            m29064o();
        }

        public Builder mergeFrom(Enum other) {
            if (other == Enum.getDefaultInstance()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f37396j = other.name_;
                this.f37395i |= 1;
                onChanged();
            }
            if (this.f37398l == null) {
                if (!other.enumvalue_.isEmpty()) {
                    if (this.f37397k.isEmpty()) {
                        this.f37397k = other.enumvalue_;
                        this.f37395i &= -3;
                    } else {
                        m29059j();
                        this.f37397k.addAll(other.enumvalue_);
                    }
                    onChanged();
                }
            } else if (!other.enumvalue_.isEmpty()) {
                if (this.f37398l.isEmpty()) {
                    this.f37398l.dispose();
                    this.f37398l = null;
                    this.f37397k = other.enumvalue_;
                    this.f37395i &= -3;
                    this.f37398l = GeneratedMessageV3.alwaysUseFieldBuilders ? m29061l() : null;
                } else {
                    this.f37398l.addAllMessages(other.enumvalue_);
                }
            }
            if (this.f37400n == null) {
                if (!other.options_.isEmpty()) {
                    if (this.f37399m.isEmpty()) {
                        this.f37399m = other.options_;
                        this.f37395i &= -5;
                    } else {
                        m29060k();
                        this.f37399m.addAll(other.options_);
                    }
                    onChanged();
                }
            } else if (!other.options_.isEmpty()) {
                if (this.f37400n.isEmpty()) {
                    this.f37400n.dispose();
                    this.f37400n = null;
                    this.f37399m = other.options_;
                    this.f37395i &= -5;
                    this.f37400n = GeneratedMessageV3.alwaysUseFieldBuilders ? m29062m() : null;
                } else {
                    this.f37400n.addAllMessages(other.options_);
                }
            }
            if (other.hasSourceContext()) {
                mergeSourceContext(other.getSourceContext());
            }
            if (other.syntax_ != 0) {
                setSyntaxValue(other.getSyntaxValue());
            }
            if (!other.getEdition().isEmpty()) {
                this.f37404r = other.edition_;
                this.f37395i |= 32;
                onChanged();
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public Builder addEnumvalue(EnumValue.Builder builderForValue) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                m29059j();
                this.f37397k.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public Builder addOptions(Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                m29060k();
                this.f37399m.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public Builder addEnumvalue(int index, EnumValue.Builder builderForValue) {
            RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
            if (repeatedFieldBuilderV3 == null) {
                m29059j();
                this.f37397k.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder addOptions(int index, Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37400n;
            if (repeatedFieldBuilderV3 == null) {
                m29060k();
                this.f37399m.add(index, builderForValue.build());
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
                                this.f37396j = input.readStringRequireUtf8();
                                this.f37395i |= 1;
                            } else if (readTag == 18) {
                                EnumValue enumValue = (EnumValue) input.readMessage(EnumValue.parser(), extensionRegistry);
                                RepeatedFieldBuilderV3<EnumValue, EnumValue.Builder, EnumValueOrBuilder> repeatedFieldBuilderV3 = this.f37398l;
                                if (repeatedFieldBuilderV3 == null) {
                                    m29059j();
                                    this.f37397k.add(enumValue);
                                } else {
                                    repeatedFieldBuilderV3.addMessage(enumValue);
                                }
                            } else if (readTag == 26) {
                                Option option = (Option) input.readMessage(Option.parser(), extensionRegistry);
                                RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f37400n;
                                if (repeatedFieldBuilderV32 == null) {
                                    m29060k();
                                    this.f37399m.add(option);
                                } else {
                                    repeatedFieldBuilderV32.addMessage(option);
                                }
                            } else if (readTag == 34) {
                                input.readMessage(m29063n().getBuilder(), extensionRegistry);
                                this.f37395i |= 8;
                            } else if (readTag == 40) {
                                this.f37403q = input.readEnum();
                                this.f37395i |= 16;
                            } else if (readTag != 50) {
                                if (!super.parseUnknownField(input, extensionRegistry, readTag)) {
                                }
                            } else {
                                this.f37404r = input.readStringRequireUtf8();
                                this.f37395i |= 32;
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

    /* renamed from: com.google.protobuf.Enum$a */
    /* loaded from: classes6.dex */
    public class C6728a extends AbstractParser<Enum> {
        @Override // com.google.protobuf.Parser
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Enum parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            Builder newBuilder = Enum.newBuilder();
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

    public /* synthetic */ Enum(GeneratedMessageV3.Builder builder, C6728a c6728a) {
        this(builder);
    }

    public static /* synthetic */ int access$976(Enum r1, int i) {
        int i2 = i | r1.bitField0_;
        r1.bitField0_ = i2;
        return i2;
    }

    public static Enum getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return TypeProto.f37906e;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Enum parseDelimitedFrom(InputStream input) throws IOException {
        return (Enum) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static Enum parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<Enum> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Enum)) {
            return super.equals(obj);
        }
        Enum r5 = (Enum) obj;
        if (getName().equals(r5.getName()) && getEnumvalueList().equals(r5.getEnumvalueList()) && getOptionsList().equals(r5.getOptionsList()) && hasSourceContext() == r5.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(r5.getSourceContext())) && this.syntax_ == r5.syntax_ && getEdition().equals(r5.getEdition()) && getUnknownFields().equals(r5.getUnknownFields());
        }
        return false;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public String getEdition() {
        Object obj = this.edition_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.edition_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public ByteString getEditionBytes() {
        Object obj = this.edition_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.edition_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public EnumValue getEnumvalue(int index) {
        return this.enumvalue_.get(index);
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public int getEnumvalueCount() {
        return this.enumvalue_.size();
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public List<EnumValue> getEnumvalueList() {
        return this.enumvalue_;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public EnumValueOrBuilder getEnumvalueOrBuilder(int index) {
        return this.enumvalue_.get(index);
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public List<? extends EnumValueOrBuilder> getEnumvalueOrBuilderList() {
        return this.enumvalue_;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public Option getOptions(int index) {
        return this.options_.get(index);
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public List<Option> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int index) {
        return this.options_.get(index);
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Enum> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i2 = 0; i2 < this.enumvalue_.size(); i2++) {
            computeStringSize += CodedOutputStream.computeMessageSize(2, this.enumvalue_.get(i2));
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            computeStringSize += CodedOutputStream.computeMessageSize(3, this.options_.get(i3));
        }
        if ((this.bitField0_ & 1) != 0) {
            computeStringSize += CodedOutputStream.computeMessageSize(4, getSourceContext());
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(5, this.syntax_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.edition_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.edition_);
        }
        int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public SourceContext getSourceContext() {
        SourceContext sourceContext = this.sourceContext_;
        return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public SourceContextOrBuilder getSourceContextOrBuilder() {
        SourceContext sourceContext = this.sourceContext_;
        return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public Syntax getSyntax() {
        Syntax forNumber = Syntax.forNumber(this.syntax_);
        return forNumber == null ? Syntax.UNRECOGNIZED : forNumber;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public int getSyntaxValue() {
        return this.syntax_;
    }

    @Override // com.google.protobuf.EnumOrBuilder
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
        if (getEnumvalueCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getEnumvalueList().hashCode();
        }
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getOptionsList().hashCode();
        }
        if (hasSourceContext()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getSourceContext().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 5) * 53) + this.syntax_) * 37) + 6) * 53) + getEdition().hashCode()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return TypeProto.f37907f.ensureFieldAccessorsInitialized(Enum.class, Builder.class);
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
        return new Enum();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(output, 1, this.name_);
        }
        for (int i = 0; i < this.enumvalue_.size(); i++) {
            output.writeMessage(2, this.enumvalue_.get(i));
        }
        for (int i2 = 0; i2 < this.options_.size(); i2++) {
            output.writeMessage(3, this.options_.get(i2));
        }
        if ((this.bitField0_ & 1) != 0) {
            output.writeMessage(4, getSourceContext());
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            output.writeEnum(5, this.syntax_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.edition_)) {
            GeneratedMessageV3.writeString(output, 6, this.edition_);
        }
        getUnknownFields().writeTo(output);
    }

    private Enum(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.name_ = "";
        this.syntax_ = 0;
        this.edition_ = "";
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Builder newBuilder(Enum prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static Enum parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static Enum parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Enum) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static Enum parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Enum getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        C6728a c6728a = null;
        return this == DEFAULT_INSTANCE ? new Builder(c6728a) : new Builder(c6728a).mergeFrom(this);
    }

    public static Enum parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Enum parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new Builder(parent, null);
    }

    public static Enum parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private Enum() {
        this.name_ = "";
        this.syntax_ = 0;
        this.edition_ = "";
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.enumvalue_ = Collections.emptyList();
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
        this.edition_ = "";
    }

    public static Enum parseFrom(InputStream input) throws IOException {
        return (Enum) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Enum parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Enum) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static Enum parseFrom(CodedInputStream input) throws IOException {
        return (Enum) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Enum parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Enum) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
