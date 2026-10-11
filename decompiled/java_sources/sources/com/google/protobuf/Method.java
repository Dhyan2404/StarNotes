package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Option;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes6.dex */
public final class Method extends GeneratedMessageV3 implements MethodOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 6;
    public static final int REQUEST_STREAMING_FIELD_NUMBER = 3;
    public static final int REQUEST_TYPE_URL_FIELD_NUMBER = 2;
    public static final int RESPONSE_STREAMING_FIELD_NUMBER = 5;
    public static final int RESPONSE_TYPE_URL_FIELD_NUMBER = 4;
    public static final int SYNTAX_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Option> options_;
    private boolean requestStreaming_;
    private volatile Object requestTypeUrl_;
    private boolean responseStreaming_;
    private volatile Object responseTypeUrl_;
    private int syntax_;
    private static final Method DEFAULT_INSTANCE = new Method();
    private static final Parser<Method> PARSER = new C6803a();

    /* loaded from: classes6.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements MethodOrBuilder {

        /* renamed from: i */
        public int f37738i;

        /* renamed from: j */
        public Object f37739j;

        /* renamed from: k */
        public Object f37740k;

        /* renamed from: l */
        public boolean f37741l;

        /* renamed from: m */
        public Object f37742m;

        /* renamed from: n */
        public boolean f37743n;

        /* renamed from: o */
        public List<Option> f37744o;

        /* renamed from: p */
        public RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> f37745p;

        /* renamed from: q */
        public int f37746q;

        public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C6803a c6803a) {
            this(builderParent);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ApiProto.f36884c;
        }

        public Builder addAllOptions(Iterable<? extends Option> values) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                m29432j();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f37744o);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public Builder addOptions(Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29432j();
                this.f37744o.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Option.Builder addOptionsBuilder() {
            return m29433k().addBuilder(Option.getDefaultInstance());
        }

        public Builder clearName() {
            this.f37739j = Method.getDefaultInstance().getName();
            this.f37738i &= -2;
            onChanged();
            return this;
        }

        public Builder clearOptions() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                this.f37744o = Collections.emptyList();
                this.f37738i &= -33;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearRequestStreaming() {
            this.f37738i &= -5;
            this.f37741l = false;
            onChanged();
            return this;
        }

        public Builder clearRequestTypeUrl() {
            this.f37740k = Method.getDefaultInstance().getRequestTypeUrl();
            this.f37738i &= -3;
            onChanged();
            return this;
        }

        public Builder clearResponseStreaming() {
            this.f37738i &= -17;
            this.f37743n = false;
            onChanged();
            return this;
        }

        public Builder clearResponseTypeUrl() {
            this.f37742m = Method.getDefaultInstance().getResponseTypeUrl();
            this.f37738i &= -9;
            onChanged();
            return this;
        }

        public Builder clearSyntax() {
            this.f37738i &= -65;
            this.f37746q = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return ApiProto.f36884c;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public String getName() {
            Object obj = this.f37739j;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f37739j = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f37739j;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f37739j = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public Option getOptions(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            return repeatedFieldBuilderV3 == null ? this.f37744o.get(index) : repeatedFieldBuilderV3.getMessage(index);
        }

        public Option.Builder getOptionsBuilder(int index) {
            return m29433k().getBuilder(index);
        }

        public List<Option.Builder> getOptionsBuilderList() {
            return m29433k().getBuilderList();
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public int getOptionsCount() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            return repeatedFieldBuilderV3 == null ? this.f37744o.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public List<Option> getOptionsList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f37744o) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            return repeatedFieldBuilderV3 == null ? this.f37744o.get(index) : repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f37744o);
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public boolean getRequestStreaming() {
            return this.f37741l;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public String getRequestTypeUrl() {
            Object obj = this.f37740k;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f37740k = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public ByteString getRequestTypeUrlBytes() {
            Object obj = this.f37740k;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f37740k = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public boolean getResponseStreaming() {
            return this.f37743n;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public String getResponseTypeUrl() {
            Object obj = this.f37742m;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f37742m = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public ByteString getResponseTypeUrlBytes() {
            Object obj = this.f37742m;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f37742m = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public Syntax getSyntax() {
            Syntax forNumber = Syntax.forNumber(this.f37746q);
            return forNumber == null ? Syntax.UNRECOGNIZED : forNumber;
        }

        @Override // com.google.protobuf.MethodOrBuilder
        public int getSyntaxValue() {
            return this.f37746q;
        }

        /* renamed from: h */
        public final void m29430h(Method result) {
            int i = this.f37738i;
            if ((i & 1) != 0) {
                result.name_ = this.f37739j;
            }
            if ((i & 2) != 0) {
                result.requestTypeUrl_ = this.f37740k;
            }
            if ((i & 4) != 0) {
                result.requestStreaming_ = this.f37741l;
            }
            if ((i & 8) != 0) {
                result.responseTypeUrl_ = this.f37742m;
            }
            if ((i & 16) != 0) {
                result.responseStreaming_ = this.f37743n;
            }
            if ((i & 64) != 0) {
                result.syntax_ = this.f37746q;
            }
        }

        /* renamed from: i */
        public final void m29431i(Method result) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 != null) {
                result.options_ = repeatedFieldBuilderV3.build();
                return;
            }
            if ((this.f37738i & 32) != 0) {
                this.f37744o = Collections.unmodifiableList(this.f37744o);
                this.f37738i &= -33;
            }
            result.options_ = this.f37744o;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ApiProto.f36885d.ensureFieldAccessorsInitialized(Method.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: j */
        public final void m29432j() {
            if ((this.f37738i & 32) == 0) {
                this.f37744o = new ArrayList(this.f37744o);
                this.f37738i |= 32;
            }
        }

        /* renamed from: k */
        public final RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> m29433k() {
            if (this.f37745p == null) {
                this.f37745p = new RepeatedFieldBuilderV3<>(this.f37744o, (this.f37738i & 32) != 0, getParentForChildren(), isClean());
                this.f37744o = null;
            }
            return this.f37745p;
        }

        public Builder removeOptions(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                m29432j();
                this.f37744o.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public Builder setName(String value) {
            value.getClass();
            this.f37739j = value;
            this.f37738i |= 1;
            onChanged();
            return this;
        }

        public Builder setNameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f37739j = value;
            this.f37738i |= 1;
            onChanged();
            return this;
        }

        public Builder setOptions(int index, Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29432j();
                this.f37744o.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public Builder setRequestStreaming(boolean value) {
            this.f37741l = value;
            this.f37738i |= 4;
            onChanged();
            return this;
        }

        public Builder setRequestTypeUrl(String value) {
            value.getClass();
            this.f37740k = value;
            this.f37738i |= 2;
            onChanged();
            return this;
        }

        public Builder setRequestTypeUrlBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f37740k = value;
            this.f37738i |= 2;
            onChanged();
            return this;
        }

        public Builder setResponseStreaming(boolean value) {
            this.f37743n = value;
            this.f37738i |= 16;
            onChanged();
            return this;
        }

        public Builder setResponseTypeUrl(String value) {
            value.getClass();
            this.f37742m = value;
            this.f37738i |= 8;
            onChanged();
            return this;
        }

        public Builder setResponseTypeUrlBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f37742m = value;
            this.f37738i |= 8;
            onChanged();
            return this;
        }

        public Builder setSyntax(Syntax value) {
            value.getClass();
            this.f37738i |= 64;
            this.f37746q = value.getNumber();
            onChanged();
            return this;
        }

        public Builder setSyntaxValue(int value) {
            this.f37746q = value;
            this.f37738i |= 64;
            onChanged();
            return this;
        }

        public /* synthetic */ Builder(C6803a c6803a) {
            this();
        }

        public Builder() {
            this.f37739j = "";
            this.f37740k = "";
            this.f37742m = "";
            this.f37744o = Collections.emptyList();
            this.f37746q = 0;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (Builder) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Method build() {
            Method buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Method buildPartial() {
            Method method = new Method(this, null);
            m29431i(method);
            if (this.f37738i != 0) {
                m29430h(method);
            }
            onBuilt();
            return method;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor field) {
            return (Builder) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Method getDefaultInstanceForType() {
            return Method.getDefaultInstance();
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

        public Option.Builder addOptionsBuilder(int index) {
            return m29433k().addBuilder(index, Option.getDefaultInstance());
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
            this.f37738i = 0;
            this.f37739j = "";
            this.f37740k = "";
            this.f37741l = false;
            this.f37742m = "";
            this.f37743n = false;
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                this.f37744o = Collections.emptyList();
            } else {
                this.f37744o = null;
                repeatedFieldBuilderV3.clear();
            }
            this.f37738i &= -33;
            this.f37746q = 0;
            return this;
        }

        public Builder addOptions(int index, Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m29432j();
                this.f37744o.add(index, value);
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
            if (other instanceof Method) {
                return mergeFrom((Method) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public Builder setOptions(int index, Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                m29432j();
                this.f37744o.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.f37739j = "";
            this.f37740k = "";
            this.f37742m = "";
            this.f37744o = Collections.emptyList();
            this.f37746q = 0;
        }

        public Builder mergeFrom(Method other) {
            if (other == Method.getDefaultInstance()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f37739j = other.name_;
                this.f37738i |= 1;
                onChanged();
            }
            if (!other.getRequestTypeUrl().isEmpty()) {
                this.f37740k = other.requestTypeUrl_;
                this.f37738i |= 2;
                onChanged();
            }
            if (other.getRequestStreaming()) {
                setRequestStreaming(other.getRequestStreaming());
            }
            if (!other.getResponseTypeUrl().isEmpty()) {
                this.f37742m = other.responseTypeUrl_;
                this.f37738i |= 8;
                onChanged();
            }
            if (other.getResponseStreaming()) {
                setResponseStreaming(other.getResponseStreaming());
            }
            if (this.f37745p == null) {
                if (!other.options_.isEmpty()) {
                    if (this.f37744o.isEmpty()) {
                        this.f37744o = other.options_;
                        this.f37738i &= -33;
                    } else {
                        m29432j();
                        this.f37744o.addAll(other.options_);
                    }
                    onChanged();
                }
            } else if (!other.options_.isEmpty()) {
                if (this.f37745p.isEmpty()) {
                    this.f37745p.dispose();
                    this.f37745p = null;
                    this.f37744o = other.options_;
                    this.f37738i &= -33;
                    this.f37745p = GeneratedMessageV3.alwaysUseFieldBuilders ? m29433k() : null;
                } else {
                    this.f37745p.addAllMessages(other.options_);
                }
            }
            if (other.syntax_ != 0) {
                setSyntaxValue(other.getSyntaxValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public Builder addOptions(Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                m29432j();
                this.f37744o.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public Builder addOptions(int index, Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
            if (repeatedFieldBuilderV3 == null) {
                m29432j();
                this.f37744o.add(index, builderForValue.build());
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
                                this.f37739j = input.readStringRequireUtf8();
                                this.f37738i |= 1;
                            } else if (readTag == 18) {
                                this.f37740k = input.readStringRequireUtf8();
                                this.f37738i |= 2;
                            } else if (readTag == 24) {
                                this.f37741l = input.readBool();
                                this.f37738i |= 4;
                            } else if (readTag == 34) {
                                this.f37742m = input.readStringRequireUtf8();
                                this.f37738i |= 8;
                            } else if (readTag == 40) {
                                this.f37743n = input.readBool();
                                this.f37738i |= 16;
                            } else if (readTag == 50) {
                                Option option = (Option) input.readMessage(Option.parser(), extensionRegistry);
                                RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f37745p;
                                if (repeatedFieldBuilderV3 == null) {
                                    m29432j();
                                    this.f37744o.add(option);
                                } else {
                                    repeatedFieldBuilderV3.addMessage(option);
                                }
                            } else if (readTag != 56) {
                                if (!super.parseUnknownField(input, extensionRegistry, readTag)) {
                                }
                            } else {
                                this.f37746q = input.readEnum();
                                this.f37738i |= 64;
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

    /* renamed from: com.google.protobuf.Method$a */
    /* loaded from: classes6.dex */
    public class C6803a extends AbstractParser<Method> {
        @Override // com.google.protobuf.Parser
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Method parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            Builder newBuilder = Method.newBuilder();
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

    public /* synthetic */ Method(GeneratedMessageV3.Builder builder, C6803a c6803a) {
        this(builder);
    }

    public static Method getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ApiProto.f36884c;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Method parseDelimitedFrom(InputStream input) throws IOException {
        return (Method) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static Method parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<Method> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Method)) {
            return super.equals(obj);
        }
        Method method = (Method) obj;
        return getName().equals(method.getName()) && getRequestTypeUrl().equals(method.getRequestTypeUrl()) && getRequestStreaming() == method.getRequestStreaming() && getResponseTypeUrl().equals(method.getResponseTypeUrl()) && getResponseStreaming() == method.getResponseStreaming() && getOptionsList().equals(method.getOptionsList()) && this.syntax_ == method.syntax_ && getUnknownFields().equals(method.getUnknownFields());
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public Option getOptions(int index) {
        return this.options_.get(index);
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public List<Option> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int index) {
        return this.options_.get(index);
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Method> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public boolean getRequestStreaming() {
        return this.requestStreaming_;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public String getRequestTypeUrl() {
        Object obj = this.requestTypeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.requestTypeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public ByteString getRequestTypeUrlBytes() {
        Object obj = this.requestTypeUrl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.requestTypeUrl_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public boolean getResponseStreaming() {
        return this.responseStreaming_;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public String getResponseTypeUrl() {
        Object obj = this.responseTypeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.responseTypeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public ByteString getResponseTypeUrlBytes() {
        Object obj = this.responseTypeUrl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.responseTypeUrl_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.requestTypeUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.requestTypeUrl_);
        }
        boolean z = this.requestStreaming_;
        if (z) {
            computeStringSize += CodedOutputStream.computeBoolSize(3, z);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseTypeUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.responseTypeUrl_);
        }
        boolean z2 = this.responseStreaming_;
        if (z2) {
            computeStringSize += CodedOutputStream.computeBoolSize(5, z2);
        }
        for (int i2 = 0; i2 < this.options_.size(); i2++) {
            computeStringSize += CodedOutputStream.computeMessageSize(6, this.options_.get(i2));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(7, this.syntax_);
        }
        int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public Syntax getSyntax() {
        Syntax forNumber = Syntax.forNumber(this.syntax_);
        return forNumber == null ? Syntax.UNRECOGNIZED : forNumber;
    }

    @Override // com.google.protobuf.MethodOrBuilder
    public int getSyntaxValue() {
        return this.syntax_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getRequestTypeUrl().hashCode()) * 37) + 3) * 53) + Internal.hashBoolean(getRequestStreaming())) * 37) + 4) * 53) + getResponseTypeUrl().hashCode()) * 37) + 5) * 53) + Internal.hashBoolean(getResponseStreaming());
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + getOptionsList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 7) * 53) + this.syntax_) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return ApiProto.f36885d.ensureFieldAccessorsInitialized(Method.class, Builder.class);
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
        return new Method();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(output, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.requestTypeUrl_)) {
            GeneratedMessageV3.writeString(output, 2, this.requestTypeUrl_);
        }
        boolean z = this.requestStreaming_;
        if (z) {
            output.writeBool(3, z);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseTypeUrl_)) {
            GeneratedMessageV3.writeString(output, 4, this.responseTypeUrl_);
        }
        boolean z2 = this.responseStreaming_;
        if (z2) {
            output.writeBool(5, z2);
        }
        for (int i = 0; i < this.options_.size(); i++) {
            output.writeMessage(6, this.options_.get(i));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            output.writeEnum(7, this.syntax_);
        }
        getUnknownFields().writeTo(output);
    }

    private Method(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.name_ = "";
        this.requestTypeUrl_ = "";
        this.requestStreaming_ = false;
        this.responseTypeUrl_ = "";
        this.responseStreaming_ = false;
        this.syntax_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Builder newBuilder(Method prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static Method parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static Method parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Method) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static Method parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Method getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        C6803a c6803a = null;
        return this == DEFAULT_INSTANCE ? new Builder(c6803a) : new Builder(c6803a).mergeFrom(this);
    }

    public static Method parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Method parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new Builder(parent, null);
    }

    public static Method parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static Method parseFrom(InputStream input) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Method parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    private Method() {
        this.name_ = "";
        this.requestTypeUrl_ = "";
        this.requestStreaming_ = false;
        this.responseTypeUrl_ = "";
        this.responseStreaming_ = false;
        this.syntax_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.requestTypeUrl_ = "";
        this.responseTypeUrl_ = "";
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static Method parseFrom(CodedInputStream input) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Method parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
