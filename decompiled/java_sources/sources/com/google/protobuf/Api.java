package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Method;
import com.google.protobuf.Mixin;
import com.google.protobuf.Option;
import com.google.protobuf.SourceContext;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes6.dex */
public final class Api extends GeneratedMessageV3 implements ApiOrBuilder {
    public static final int METHODS_FIELD_NUMBER = 2;
    public static final int MIXINS_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 5;
    public static final int SYNTAX_FIELD_NUMBER = 7;
    public static final int VERSION_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private byte memoizedIsInitialized;
    private List<Method> methods_;
    private List<Mixin> mixins_;
    private volatile Object name_;
    private List<Option> options_;
    private SourceContext sourceContext_;
    private int syntax_;
    private volatile Object version_;
    private static final Api DEFAULT_INSTANCE = new Api();
    private static final Parser<Api> PARSER = new C6644a();

    /* loaded from: classes6.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ApiOrBuilder {

        /* renamed from: i */
        public int f36870i;

        /* renamed from: j */
        public Object f36871j;

        /* renamed from: k */
        public List<Method> f36872k;

        /* renamed from: l */
        public RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> f36873l;

        /* renamed from: m */
        public List<Option> f36874m;

        /* renamed from: n */
        public RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> f36875n;

        /* renamed from: o */
        public Object f36876o;

        /* renamed from: p */
        public SourceContext f36877p;

        /* renamed from: q */
        public SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> f36878q;

        /* renamed from: r */
        public List<Mixin> f36879r;

        /* renamed from: s */
        public RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> f36880s;

        /* renamed from: t */
        public int f36881t;

        public /* synthetic */ Builder(C6644a c6644a) {
            this();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ApiProto.f36882a;
        }

        public Builder addAllMethods(Iterable<? extends Method> values) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                m28614j();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f36872k);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public Builder addAllMixins(Iterable<? extends Mixin> values) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                m28615k();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f36879r);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public Builder addAllOptions(Iterable<? extends Option> values) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                m28616l();
                AbstractMessageLite.Builder.addAll((Iterable) values, (List) this.f36874m);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(values);
            }
            return this;
        }

        public Builder addMethods(Method value) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28614j();
                this.f36872k.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Method.Builder addMethodsBuilder() {
            return m28617m().addBuilder(Method.getDefaultInstance());
        }

        public Builder addMixins(Mixin value) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28615k();
                this.f36879r.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Mixin.Builder addMixinsBuilder() {
            return m28618n().addBuilder(Mixin.getDefaultInstance());
        }

        public Builder addOptions(Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28616l();
                this.f36874m.add(value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(value);
            }
            return this;
        }

        public Option.Builder addOptionsBuilder() {
            return m28619o().addBuilder(Option.getDefaultInstance());
        }

        public Builder clearMethods() {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                this.f36872k = Collections.emptyList();
                this.f36870i &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearMixins() {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                this.f36879r = Collections.emptyList();
                this.f36870i &= -33;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearName() {
            this.f36871j = Api.getDefaultInstance().getName();
            this.f36870i &= -2;
            onChanged();
            return this;
        }

        public Builder clearOptions() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                this.f36874m = Collections.emptyList();
                this.f36870i &= -5;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder clearSourceContext() {
            this.f36870i &= -17;
            this.f36877p = null;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f36878q;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.dispose();
                this.f36878q = null;
            }
            onChanged();
            return this;
        }

        public Builder clearSyntax() {
            this.f36870i &= -65;
            this.f36881t = 0;
            onChanged();
            return this;
        }

        public Builder clearVersion() {
            this.f36876o = Api.getDefaultInstance().getVersion();
            this.f36870i &= -9;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return ApiProto.f36882a;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public Method getMethods(int index) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            return repeatedFieldBuilderV3 == null ? this.f36872k.get(index) : repeatedFieldBuilderV3.getMessage(index);
        }

        public Method.Builder getMethodsBuilder(int index) {
            return m28617m().getBuilder(index);
        }

        public List<Method.Builder> getMethodsBuilderList() {
            return m28617m().getBuilderList();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public int getMethodsCount() {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            return repeatedFieldBuilderV3 == null ? this.f36872k.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<Method> getMethodsList() {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f36872k) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public MethodOrBuilder getMethodsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            return repeatedFieldBuilderV3 == null ? this.f36872k.get(index) : repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<? extends MethodOrBuilder> getMethodsOrBuilderList() {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f36872k);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public Mixin getMixins(int index) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            return repeatedFieldBuilderV3 == null ? this.f36879r.get(index) : repeatedFieldBuilderV3.getMessage(index);
        }

        public Mixin.Builder getMixinsBuilder(int index) {
            return m28618n().getBuilder(index);
        }

        public List<Mixin.Builder> getMixinsBuilderList() {
            return m28618n().getBuilderList();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public int getMixinsCount() {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            return repeatedFieldBuilderV3 == null ? this.f36879r.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<Mixin> getMixinsList() {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f36879r) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public MixinOrBuilder getMixinsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            return repeatedFieldBuilderV3 == null ? this.f36879r.get(index) : repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<? extends MixinOrBuilder> getMixinsOrBuilderList() {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f36879r);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public String getName() {
            Object obj = this.f36871j;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f36871j = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f36871j;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f36871j = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public Option getOptions(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            return repeatedFieldBuilderV3 == null ? this.f36874m.get(index) : repeatedFieldBuilderV3.getMessage(index);
        }

        public Option.Builder getOptionsBuilder(int index) {
            return m28619o().getBuilder(index);
        }

        public List<Option.Builder> getOptionsBuilderList() {
            return m28619o().getBuilderList();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public int getOptionsCount() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            return repeatedFieldBuilderV3 == null ? this.f36874m.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<Option> getOptionsList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.f36874m) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            return repeatedFieldBuilderV3 == null ? this.f36874m.get(index) : repeatedFieldBuilderV3.getMessageOrBuilder(index);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.f36874m);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public SourceContext getSourceContext() {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f36878q;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            SourceContext sourceContext = this.f36877p;
            return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
        }

        public SourceContext.Builder getSourceContextBuilder() {
            this.f36870i |= 16;
            onChanged();
            return m28620p().getBuilder();
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public SourceContextOrBuilder getSourceContextOrBuilder() {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f36878q;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            SourceContext sourceContext = this.f36877p;
            return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public Syntax getSyntax() {
            Syntax forNumber = Syntax.forNumber(this.f36881t);
            return forNumber == null ? Syntax.UNRECOGNIZED : forNumber;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public int getSyntaxValue() {
            return this.f36881t;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public String getVersion() {
            Object obj = this.f36876o;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f36876o = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public ByteString getVersionBytes() {
            Object obj = this.f36876o;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f36876o = copyFromUtf8;
            return copyFromUtf8;
        }

        /* renamed from: h */
        public final void m28612h(Api result) {
            int i;
            int i2 = this.f36870i;
            if ((i2 & 1) != 0) {
                result.name_ = this.f36871j;
            }
            if ((i2 & 8) != 0) {
                result.version_ = this.f36876o;
            }
            if ((i2 & 16) != 0) {
                SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f36878q;
                result.sourceContext_ = singleFieldBuilderV3 == null ? this.f36877p : singleFieldBuilderV3.build();
                i = 1;
            } else {
                i = 0;
            }
            if ((i2 & 64) != 0) {
                result.syntax_ = this.f36881t;
            }
            Api.access$1076(result, i);
        }

        @Override // com.google.protobuf.ApiOrBuilder
        public boolean hasSourceContext() {
            return (this.f36870i & 16) != 0;
        }

        /* renamed from: i */
        public final void m28613i(Api result) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.f36870i & 2) != 0) {
                    this.f36872k = Collections.unmodifiableList(this.f36872k);
                    this.f36870i &= -3;
                }
                result.methods_ = this.f36872k;
            } else {
                result.methods_ = repeatedFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f36875n;
            if (repeatedFieldBuilderV32 == null) {
                if ((this.f36870i & 4) != 0) {
                    this.f36874m = Collections.unmodifiableList(this.f36874m);
                    this.f36870i &= -5;
                }
                result.options_ = this.f36874m;
            } else {
                result.options_ = repeatedFieldBuilderV32.build();
            }
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV33 = this.f36880s;
            if (repeatedFieldBuilderV33 != null) {
                result.mixins_ = repeatedFieldBuilderV33.build();
                return;
            }
            if ((this.f36870i & 32) != 0) {
                this.f36879r = Collections.unmodifiableList(this.f36879r);
                this.f36870i &= -33;
            }
            result.mixins_ = this.f36879r;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ApiProto.f36883b.ensureFieldAccessorsInitialized(Api.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: j */
        public final void m28614j() {
            if ((this.f36870i & 2) == 0) {
                this.f36872k = new ArrayList(this.f36872k);
                this.f36870i |= 2;
            }
        }

        /* renamed from: k */
        public final void m28615k() {
            if ((this.f36870i & 32) == 0) {
                this.f36879r = new ArrayList(this.f36879r);
                this.f36870i |= 32;
            }
        }

        /* renamed from: l */
        public final void m28616l() {
            if ((this.f36870i & 4) == 0) {
                this.f36874m = new ArrayList(this.f36874m);
                this.f36870i |= 4;
            }
        }

        /* renamed from: m */
        public final RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> m28617m() {
            if (this.f36873l == null) {
                this.f36873l = new RepeatedFieldBuilderV3<>(this.f36872k, (this.f36870i & 2) != 0, getParentForChildren(), isClean());
                this.f36872k = null;
            }
            return this.f36873l;
        }

        public Builder mergeSourceContext(SourceContext value) {
            SourceContext sourceContext;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f36878q;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.mergeFrom(value);
            } else if ((this.f36870i & 16) == 0 || (sourceContext = this.f36877p) == null || sourceContext == SourceContext.getDefaultInstance()) {
                this.f36877p = value;
            } else {
                getSourceContextBuilder().mergeFrom(value);
            }
            if (this.f36877p != null) {
                this.f36870i |= 16;
                onChanged();
            }
            return this;
        }

        /* renamed from: n */
        public final RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> m28618n() {
            if (this.f36880s == null) {
                this.f36880s = new RepeatedFieldBuilderV3<>(this.f36879r, (this.f36870i & 32) != 0, getParentForChildren(), isClean());
                this.f36879r = null;
            }
            return this.f36880s;
        }

        /* renamed from: o */
        public final RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> m28619o() {
            if (this.f36875n == null) {
                this.f36875n = new RepeatedFieldBuilderV3<>(this.f36874m, (this.f36870i & 4) != 0, getParentForChildren(), isClean());
                this.f36874m = null;
            }
            return this.f36875n;
        }

        /* renamed from: p */
        public final SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> m28620p() {
            if (this.f36878q == null) {
                this.f36878q = new SingleFieldBuilderV3<>(getSourceContext(), getParentForChildren(), isClean());
                this.f36877p = null;
            }
            return this.f36878q;
        }

        /* renamed from: q */
        public final void m28621q() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m28617m();
                m28619o();
                m28620p();
                m28618n();
            }
        }

        public Builder removeMethods(int index) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                m28614j();
                this.f36872k.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public Builder removeMixins(int index) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                m28615k();
                this.f36879r.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public Builder removeOptions(int index) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                m28616l();
                this.f36874m.remove(index);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(index);
            }
            return this;
        }

        public Builder setMethods(int index, Method value) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28614j();
                this.f36872k.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public Builder setMixins(int index, Mixin value) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28615k();
                this.f36879r.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public Builder setName(String value) {
            value.getClass();
            this.f36871j = value;
            this.f36870i |= 1;
            onChanged();
            return this;
        }

        public Builder setNameBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f36871j = value;
            this.f36870i |= 1;
            onChanged();
            return this;
        }

        public Builder setOptions(int index, Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28616l();
                this.f36874m.set(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, value);
            }
            return this;
        }

        public Builder setSourceContext(SourceContext value) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f36878q;
            if (singleFieldBuilderV3 == null) {
                value.getClass();
                this.f36877p = value;
            } else {
                singleFieldBuilderV3.setMessage(value);
            }
            this.f36870i |= 16;
            onChanged();
            return this;
        }

        public Builder setSyntax(Syntax value) {
            value.getClass();
            this.f36870i |= 64;
            this.f36881t = value.getNumber();
            onChanged();
            return this;
        }

        public Builder setSyntaxValue(int value) {
            this.f36881t = value;
            this.f36870i |= 64;
            onChanged();
            return this;
        }

        public Builder setVersion(String value) {
            value.getClass();
            this.f36876o = value;
            this.f36870i |= 8;
            onChanged();
            return this;
        }

        public Builder setVersionBytes(ByteString value) {
            value.getClass();
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.f36876o = value;
            this.f36870i |= 8;
            onChanged();
            return this;
        }

        public /* synthetic */ Builder(GeneratedMessageV3.BuilderParent builderParent, C6644a c6644a) {
            this(builderParent);
        }

        public Builder() {
            this.f36871j = "";
            this.f36872k = Collections.emptyList();
            this.f36874m = Collections.emptyList();
            this.f36876o = "";
            this.f36879r = Collections.emptyList();
            this.f36881t = 0;
            m28621q();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor field, Object value) {
            return (Builder) super.addRepeatedField(field, value);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Api build() {
            Api buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public Api buildPartial() {
            Api api = new Api(this, null);
            m28613i(api);
            if (this.f36870i != 0) {
                m28612h(api);
            }
            onBuilt();
            return api;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor field) {
            return (Builder) super.clearField(field);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public Api getDefaultInstanceForType() {
            return Api.getDefaultInstance();
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

        public Method.Builder addMethodsBuilder(int index) {
            return m28617m().addBuilder(index, Method.getDefaultInstance());
        }

        public Mixin.Builder addMixinsBuilder(int index) {
            return m28618n().addBuilder(index, Mixin.getDefaultInstance());
        }

        public Option.Builder addOptionsBuilder(int index) {
            return m28619o().addBuilder(index, Option.getDefaultInstance());
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
            this.f36870i = 0;
            this.f36871j = "";
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                this.f36872k = Collections.emptyList();
            } else {
                this.f36872k = null;
                repeatedFieldBuilderV3.clear();
            }
            this.f36870i &= -3;
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f36875n;
            if (repeatedFieldBuilderV32 == null) {
                this.f36874m = Collections.emptyList();
            } else {
                this.f36874m = null;
                repeatedFieldBuilderV32.clear();
            }
            this.f36870i &= -5;
            this.f36876o = "";
            this.f36877p = null;
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f36878q;
            if (singleFieldBuilderV3 != null) {
                singleFieldBuilderV3.dispose();
                this.f36878q = null;
            }
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV33 = this.f36880s;
            if (repeatedFieldBuilderV33 == null) {
                this.f36879r = Collections.emptyList();
            } else {
                this.f36879r = null;
                repeatedFieldBuilderV33.clear();
            }
            this.f36870i &= -33;
            this.f36881t = 0;
            return this;
        }

        public Builder addMethods(int index, Method value) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28614j();
                this.f36872k.add(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, value);
            }
            return this;
        }

        public Builder addMixins(int index, Mixin value) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28615k();
                this.f36879r.add(index, value);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, value);
            }
            return this;
        }

        public Builder addOptions(int index, Option value) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                value.getClass();
                m28616l();
                this.f36874m.add(index, value);
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
            if (other instanceof Api) {
                return mergeFrom((Api) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public Builder setMethods(int index, Method.Builder builderForValue) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                m28614j();
                this.f36872k.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder setMixins(int index, Mixin.Builder builderForValue) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                m28615k();
                this.f36879r.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder setOptions(int index, Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                m28616l();
                this.f36874m.set(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder setSourceContext(SourceContext.Builder builderForValue) {
            SingleFieldBuilderV3<SourceContext, SourceContext.Builder, SourceContextOrBuilder> singleFieldBuilderV3 = this.f36878q;
            if (singleFieldBuilderV3 == null) {
                this.f36877p = builderForValue.build();
            } else {
                singleFieldBuilderV3.setMessage(builderForValue.build());
            }
            this.f36870i |= 16;
            onChanged();
            return this;
        }

        public Builder mergeFrom(Api other) {
            if (other == Api.getDefaultInstance()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f36871j = other.name_;
                this.f36870i |= 1;
                onChanged();
            }
            if (this.f36873l == null) {
                if (!other.methods_.isEmpty()) {
                    if (this.f36872k.isEmpty()) {
                        this.f36872k = other.methods_;
                        this.f36870i &= -3;
                    } else {
                        m28614j();
                        this.f36872k.addAll(other.methods_);
                    }
                    onChanged();
                }
            } else if (!other.methods_.isEmpty()) {
                if (this.f36873l.isEmpty()) {
                    this.f36873l.dispose();
                    this.f36873l = null;
                    this.f36872k = other.methods_;
                    this.f36870i &= -3;
                    this.f36873l = GeneratedMessageV3.alwaysUseFieldBuilders ? m28617m() : null;
                } else {
                    this.f36873l.addAllMessages(other.methods_);
                }
            }
            if (this.f36875n == null) {
                if (!other.options_.isEmpty()) {
                    if (this.f36874m.isEmpty()) {
                        this.f36874m = other.options_;
                        this.f36870i &= -5;
                    } else {
                        m28616l();
                        this.f36874m.addAll(other.options_);
                    }
                    onChanged();
                }
            } else if (!other.options_.isEmpty()) {
                if (this.f36875n.isEmpty()) {
                    this.f36875n.dispose();
                    this.f36875n = null;
                    this.f36874m = other.options_;
                    this.f36870i &= -5;
                    this.f36875n = GeneratedMessageV3.alwaysUseFieldBuilders ? m28619o() : null;
                } else {
                    this.f36875n.addAllMessages(other.options_);
                }
            }
            if (!other.getVersion().isEmpty()) {
                this.f36876o = other.version_;
                this.f36870i |= 8;
                onChanged();
            }
            if (other.hasSourceContext()) {
                mergeSourceContext(other.getSourceContext());
            }
            if (this.f36880s == null) {
                if (!other.mixins_.isEmpty()) {
                    if (this.f36879r.isEmpty()) {
                        this.f36879r = other.mixins_;
                        this.f36870i &= -33;
                    } else {
                        m28615k();
                        this.f36879r.addAll(other.mixins_);
                    }
                    onChanged();
                }
            } else if (!other.mixins_.isEmpty()) {
                if (this.f36880s.isEmpty()) {
                    this.f36880s.dispose();
                    this.f36880s = null;
                    this.f36879r = other.mixins_;
                    this.f36870i &= -33;
                    this.f36880s = GeneratedMessageV3.alwaysUseFieldBuilders ? m28618n() : null;
                } else {
                    this.f36880s.addAllMessages(other.mixins_);
                }
            }
            if (other.syntax_ != 0) {
                setSyntaxValue(other.getSyntaxValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public Builder(GeneratedMessageV3.BuilderParent parent) {
            super(parent);
            this.f36871j = "";
            this.f36872k = Collections.emptyList();
            this.f36874m = Collections.emptyList();
            this.f36876o = "";
            this.f36879r = Collections.emptyList();
            this.f36881t = 0;
            m28621q();
        }

        public Builder addMethods(Method.Builder builderForValue) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                m28614j();
                this.f36872k.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public Builder addMixins(Mixin.Builder builderForValue) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                m28615k();
                this.f36879r.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public Builder addOptions(Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                m28616l();
                this.f36874m.add(builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builderForValue.build());
            }
            return this;
        }

        public Builder addMethods(int index, Method.Builder builderForValue) {
            RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
            if (repeatedFieldBuilderV3 == null) {
                m28614j();
                this.f36872k.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder addMixins(int index, Mixin.Builder builderForValue) {
            RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV3 = this.f36880s;
            if (repeatedFieldBuilderV3 == null) {
                m28615k();
                this.f36879r.add(index, builderForValue.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(index, builderForValue.build());
            }
            return this;
        }

        public Builder addOptions(int index, Option.Builder builderForValue) {
            RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV3 = this.f36875n;
            if (repeatedFieldBuilderV3 == null) {
                m28616l();
                this.f36874m.add(index, builderForValue.build());
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
                                this.f36871j = input.readStringRequireUtf8();
                                this.f36870i |= 1;
                            } else if (readTag == 18) {
                                Method method = (Method) input.readMessage(Method.parser(), extensionRegistry);
                                RepeatedFieldBuilderV3<Method, Method.Builder, MethodOrBuilder> repeatedFieldBuilderV3 = this.f36873l;
                                if (repeatedFieldBuilderV3 == null) {
                                    m28614j();
                                    this.f36872k.add(method);
                                } else {
                                    repeatedFieldBuilderV3.addMessage(method);
                                }
                            } else if (readTag == 26) {
                                Option option = (Option) input.readMessage(Option.parser(), extensionRegistry);
                                RepeatedFieldBuilderV3<Option, Option.Builder, OptionOrBuilder> repeatedFieldBuilderV32 = this.f36875n;
                                if (repeatedFieldBuilderV32 == null) {
                                    m28616l();
                                    this.f36874m.add(option);
                                } else {
                                    repeatedFieldBuilderV32.addMessage(option);
                                }
                            } else if (readTag == 34) {
                                this.f36876o = input.readStringRequireUtf8();
                                this.f36870i |= 8;
                            } else if (readTag == 42) {
                                input.readMessage(m28620p().getBuilder(), extensionRegistry);
                                this.f36870i |= 16;
                            } else if (readTag == 50) {
                                Mixin mixin = (Mixin) input.readMessage(Mixin.parser(), extensionRegistry);
                                RepeatedFieldBuilderV3<Mixin, Mixin.Builder, MixinOrBuilder> repeatedFieldBuilderV33 = this.f36880s;
                                if (repeatedFieldBuilderV33 == null) {
                                    m28615k();
                                    this.f36879r.add(mixin);
                                } else {
                                    repeatedFieldBuilderV33.addMessage(mixin);
                                }
                            } else if (readTag != 56) {
                                if (!super.parseUnknownField(input, extensionRegistry, readTag)) {
                                }
                            } else {
                                this.f36881t = input.readEnum();
                                this.f36870i |= 64;
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

    /* renamed from: com.google.protobuf.Api$a */
    /* loaded from: classes6.dex */
    public class C6644a extends AbstractParser<Api> {
        @Override // com.google.protobuf.Parser
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Api parsePartialFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            Builder newBuilder = Api.newBuilder();
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

    public /* synthetic */ Api(GeneratedMessageV3.Builder builder, C6644a c6644a) {
        this(builder);
    }

    public static /* synthetic */ int access$1076(Api api, int i) {
        int i2 = i | api.bitField0_;
        api.bitField0_ = i2;
        return i2;
    }

    public static Api getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ApiProto.f36882a;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Api parseDelimitedFrom(InputStream input) throws IOException {
        return (Api) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
    }

    public static Api parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    public static Parser<Api> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Api)) {
            return super.equals(obj);
        }
        Api api = (Api) obj;
        if (getName().equals(api.getName()) && getMethodsList().equals(api.getMethodsList()) && getOptionsList().equals(api.getOptionsList()) && getVersion().equals(api.getVersion()) && hasSourceContext() == api.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(api.getSourceContext())) && getMixinsList().equals(api.getMixinsList()) && this.syntax_ == api.syntax_ && getUnknownFields().equals(api.getUnknownFields());
        }
        return false;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public Method getMethods(int index) {
        return this.methods_.get(index);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public int getMethodsCount() {
        return this.methods_.size();
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<Method> getMethodsList() {
        return this.methods_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public MethodOrBuilder getMethodsOrBuilder(int index) {
        return this.methods_.get(index);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<? extends MethodOrBuilder> getMethodsOrBuilderList() {
        return this.methods_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public Mixin getMixins(int index) {
        return this.mixins_.get(index);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public int getMixinsCount() {
        return this.mixins_.size();
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<Mixin> getMixinsList() {
        return this.mixins_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public MixinOrBuilder getMixinsOrBuilder(int index) {
        return this.mixins_.get(index);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<? extends MixinOrBuilder> getMixinsOrBuilderList() {
        return this.mixins_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public Option getOptions(int index) {
        return this.options_.get(index);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<Option> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int index) {
        return this.options_.get(index);
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Api> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i2 = 0; i2 < this.methods_.size(); i2++) {
            computeStringSize += CodedOutputStream.computeMessageSize(2, this.methods_.get(i2));
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            computeStringSize += CodedOutputStream.computeMessageSize(3, this.options_.get(i3));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.version_);
        }
        if ((1 & this.bitField0_) != 0) {
            computeStringSize += CodedOutputStream.computeMessageSize(5, getSourceContext());
        }
        for (int i4 = 0; i4 < this.mixins_.size(); i4++) {
            computeStringSize += CodedOutputStream.computeMessageSize(6, this.mixins_.get(i4));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(7, this.syntax_);
        }
        int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public SourceContext getSourceContext() {
        SourceContext sourceContext = this.sourceContext_;
        return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public SourceContextOrBuilder getSourceContextOrBuilder() {
        SourceContext sourceContext = this.sourceContext_;
        return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public Syntax getSyntax() {
        Syntax forNumber = Syntax.forNumber(this.syntax_);
        return forNumber == null ? Syntax.UNRECOGNIZED : forNumber;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public int getSyntaxValue() {
        return this.syntax_;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public String getVersion() {
        Object obj = this.version_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.version_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.ApiOrBuilder
    public ByteString getVersionBytes() {
        Object obj = this.version_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.version_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.google.protobuf.ApiOrBuilder
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
        if (getMethodsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMethodsList().hashCode();
        }
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getOptionsList().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 4) * 53) + getVersion().hashCode();
        if (hasSourceContext()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getSourceContext().hashCode();
        }
        if (getMixinsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getMixinsList().hashCode();
        }
        int hashCode3 = (((((hashCode2 * 37) + 7) * 53) + this.syntax_) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return ApiProto.f36883b.ensureFieldAccessorsInitialized(Api.class, Builder.class);
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
        return new Api();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(output, 1, this.name_);
        }
        for (int i = 0; i < this.methods_.size(); i++) {
            output.writeMessage(2, this.methods_.get(i));
        }
        for (int i2 = 0; i2 < this.options_.size(); i2++) {
            output.writeMessage(3, this.options_.get(i2));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
            GeneratedMessageV3.writeString(output, 4, this.version_);
        }
        if ((1 & this.bitField0_) != 0) {
            output.writeMessage(5, getSourceContext());
        }
        for (int i3 = 0; i3 < this.mixins_.size(); i3++) {
            output.writeMessage(6, this.mixins_.get(i3));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            output.writeEnum(7, this.syntax_);
        }
        getUnknownFields().writeTo(output);
    }

    private Api(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.name_ = "";
        this.version_ = "";
        this.syntax_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Builder newBuilder(Api prototype) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
    }

    public static Api parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    public static Api parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Api) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input, extensionRegistry);
    }

    public static Api parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Api getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder toBuilder() {
        C6644a c6644a = null;
        return this == DEFAULT_INSTANCE ? new Builder(c6644a) : new Builder(c6644a).mergeFrom(this);
    }

    public static Api parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Api parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent parent) {
        return new Builder(parent, null);
    }

    public static Api parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(data, extensionRegistry);
    }

    private Api() {
        this.name_ = "";
        this.version_ = "";
        this.syntax_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.methods_ = Collections.emptyList();
        this.options_ = Collections.emptyList();
        this.version_ = "";
        this.mixins_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static Api parseFrom(InputStream input) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Api parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }

    public static Api parseFrom(CodedInputStream input) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, input);
    }

    public static Api parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, input, extensionRegistry);
    }
}
