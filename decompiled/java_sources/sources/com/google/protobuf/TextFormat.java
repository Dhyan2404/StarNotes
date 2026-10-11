package com.google.protobuf;

import com.bumptech.glide.load.engine.GlideException;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.protobuf.Descriptors;
import com.google.protobuf.DynamicMessage;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.Message;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.TextFormatParseInfoTree;
import com.google.protobuf.UnknownFieldSet;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.iri;
import com.sunia.HTREnginev2.ocn;
import com.sunia.HTREnginev2.vki;
import java.io.IOException;
import java.lang.Character;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes6.dex */
public final class TextFormat {

    /* renamed from: b */
    public static final String f37835b = "\t ";

    /* renamed from: a */
    public static final Logger f37834a = Logger.getLogger(TextFormat.class.getName());

    /* renamed from: c */
    public static final Parser f37836c = Parser.newBuilder().build();

    /* loaded from: classes6.dex */
    public static class InvalidEscapeSequenceException extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        public InvalidEscapeSequenceException(final String description) {
            super(description);
        }
    }

    /* loaded from: classes6.dex */
    public static class ParseException extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public ParseException(final String message) {
            this(-1, -1, message);
        }

        public int getColumn() {
            return this.column;
        }

        public int getLine() {
            return this.line;
        }

        public ParseException(final int line, final int column, final String message) {
            super(Integer.toString(line) + ":" + column + ": " + message);
            this.line = line;
            this.column = column;
        }
    }

    /* loaded from: classes6.dex */
    public static class Parser {

        /* renamed from: g */
        public static final int f37837g = 4096;

        /* renamed from: a */
        public final TypeRegistry f37838a;

        /* renamed from: b */
        public final boolean f37839b;

        /* renamed from: c */
        public final boolean f37840c;

        /* renamed from: d */
        public final boolean f37841d;

        /* renamed from: e */
        public final SingularOverwritePolicy f37842e;

        /* renamed from: f */
        public TextFormatParseInfoTree.Builder f37843f;

        /* loaded from: classes6.dex */
        public static class Builder {

            /* renamed from: a */
            public boolean f37844a = false;

            /* renamed from: b */
            public boolean f37845b = false;

            /* renamed from: c */
            public boolean f37846c = false;

            /* renamed from: d */
            public SingularOverwritePolicy f37847d = SingularOverwritePolicy.ALLOW_SINGULAR_OVERWRITES;

            /* renamed from: e */
            public TextFormatParseInfoTree.Builder f37848e = null;

            /* renamed from: f */
            public TypeRegistry f37849f = TypeRegistry.getEmptyTypeRegistry();

            public Parser build() {
                return new Parser(this.f37849f, this.f37844a, this.f37845b, this.f37846c, this.f37847d, this.f37848e, null);
            }

            public Builder setAllowUnknownExtensions(boolean allowUnknownExtensions) {
                this.f37846c = allowUnknownExtensions;
                return this;
            }

            public Builder setAllowUnknownFields(boolean allowUnknownFields) {
                this.f37844a = allowUnknownFields;
                return this;
            }

            public Builder setParseInfoTreeBuilder(TextFormatParseInfoTree.Builder parseInfoTreeBuilder) {
                this.f37848e = parseInfoTreeBuilder;
                return this;
            }

            public Builder setSingularOverwritePolicy(SingularOverwritePolicy p) {
                this.f37847d = p;
                return this;
            }

            public Builder setTypeRegistry(TypeRegistry typeRegistry) {
                this.f37849f = typeRegistry;
                return this;
            }
        }

        /* loaded from: classes6.dex */
        public enum SingularOverwritePolicy {
            ALLOW_SINGULAR_OVERWRITES,
            FORBID_SINGULAR_OVERWRITES
        }

        /* loaded from: classes6.dex */
        public static final class UnknownField {

            /* renamed from: a */
            public final String f37850a;

            /* renamed from: b */
            public final Type f37851b;

            /* loaded from: classes6.dex */
            public enum Type {
                FIELD,
                EXTENSION
            }

            public UnknownField(String message, Type type) {
                this.f37850a = message;
                this.f37851b = type;
            }
        }

        public /* synthetic */ Parser(TypeRegistry typeRegistry, boolean z, boolean z2, boolean z3, SingularOverwritePolicy singularOverwritePolicy, TextFormatParseInfoTree.Builder builder, C6826a c6826a) {
            this(typeRegistry, z, z2, z3, singularOverwritePolicy, builder);
        }

        /* renamed from: n */
        public static StringBuilder m29514n(final Readable input) throws IOException {
            StringBuilder sb = new StringBuilder();
            CharBuffer allocate = CharBuffer.allocate(4096);
            while (true) {
                int read = input.read(allocate);
                if (read == -1) {
                    return sb;
                }
                iri.m54772b(allocate);
                sb.append((CharSequence) allocate, 0, read);
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        /* renamed from: a */
        public final void m29515a(final List<UnknownField> unknownFields) throws ParseException {
            int i;
            boolean z;
            if (unknownFields.isEmpty()) {
                return;
            }
            StringBuilder sb = new StringBuilder("Input contains unknown fields and/or extensions:");
            for (UnknownField unknownField : unknownFields) {
                sb.append('\n');
                sb.append(unknownField.f37850a);
            }
            if (this.f37839b) {
                TextFormat.f37834a.warning(sb.toString());
                return;
            }
            if (this.f37841d) {
                Iterator<UnknownField> it2 = unknownFields.iterator();
                i = 0;
                while (true) {
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    } else {
                        if (it2.next().f37851b == UnknownField.Type.FIELD) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                }
                if (z) {
                    TextFormat.f37834a.warning(sb.toString());
                    return;
                }
            } else {
                i = 0;
            }
            String[] split = unknownFields.get(i).f37850a.split(":");
            throw new ParseException(Integer.parseInt(split[0]), Integer.parseInt(split[1]), sb.toString());
        }

        /* renamed from: b */
        public final void m29516b(C6828c c6828c, ExtensionRegistry extensionRegistry, MessageReflection.MergeTarget mergeTarget, Descriptors.FieldDescriptor fieldDescriptor, ExtensionRegistry.ExtensionInfo extensionInfo, TextFormatParseInfoTree.Builder builder, List<UnknownField> list) throws ParseException {
            String str;
            Object finish;
            if (this.f37842e == SingularOverwritePolicy.FORBID_SINGULAR_OVERWRITES && !fieldDescriptor.isRepeated()) {
                if (mergeTarget.hasField(fieldDescriptor)) {
                    throw c6828c.m29548A("Non-repeated field \"" + fieldDescriptor.getFullName() + "\" cannot be overwritten.");
                }
                if (fieldDescriptor.getContainingOneof() != null && mergeTarget.hasOneof(fieldDescriptor.getContainingOneof())) {
                    Descriptors.OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
                    throw c6828c.m29548A("Field \"" + fieldDescriptor.getFullName() + "\" is specified along with field \"" + mergeTarget.getOneofFieldDescriptor(containingOneof).getFullName() + "\", another member of oneof \"" + containingOneof.getName() + "\".");
                }
            }
            Object obj = null;
            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (c6828c.m29550C("<")) {
                    str = ">";
                } else {
                    c6828c.m29558c("{");
                    str = "}";
                }
                String str2 = str;
                if (fieldDescriptor.getMessageType().getFullName().equals("google.protobuf.Any") && c6828c.m29550C(IteratorUtils.f104923a)) {
                    MessageReflection.MergeTarget mo29418a = mergeTarget.mo29418a(fieldDescriptor, DynamicMessage.getDefaultInstance(fieldDescriptor.getMessageType()));
                    m29521g(c6828c, extensionRegistry, mo29418a, builder, list, fieldDescriptor.getMessageType());
                    finish = mo29418a.finish();
                    c6828c.m29558c(str2);
                } else {
                    MessageReflection.MergeTarget mo29418a2 = mergeTarget.mo29418a(fieldDescriptor, extensionInfo != null ? extensionInfo.defaultInstance : null);
                    while (!c6828c.m29550C(str2)) {
                        if (c6828c.m29557b()) {
                            throw c6828c.m29581z("Expected \"" + str2 + "\".");
                        }
                        m29522h(c6828c, extensionRegistry, mo29418a2, builder, list);
                    }
                    finish = mo29418a2.finish();
                }
                obj = finish;
            } else {
                switch (C6826a.f37859b[fieldDescriptor.getType().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        obj = Integer.valueOf(c6828c.m29565j());
                        break;
                    case 4:
                    case 5:
                    case 6:
                        obj = Long.valueOf(c6828c.m29566k());
                        break;
                    case 7:
                        obj = Boolean.valueOf(c6828c.m29559d());
                        break;
                    case 8:
                        obj = Float.valueOf(c6828c.m29563h());
                        break;
                    case 9:
                        obj = Double.valueOf(c6828c.m29562g());
                        break;
                    case 10:
                    case 11:
                        obj = Integer.valueOf(c6828c.m29568m());
                        break;
                    case 12:
                    case 13:
                        obj = Long.valueOf(c6828c.m29569n());
                        break;
                    case 14:
                        obj = c6828c.m29567l();
                        break;
                    case 15:
                        obj = c6828c.m29560e();
                        break;
                    case 16:
                        Descriptors.EnumDescriptor enumType = fieldDescriptor.getEnumType();
                        if (c6828c.m29579x()) {
                            int m29565j = c6828c.m29565j();
                            obj = enumType.findValueByNumber(m29565j);
                            if (obj == null) {
                                String str3 = "Enum type \"" + enumType.getFullName() + "\" has no value with number " + m29565j + '.';
                                if (this.f37840c) {
                                    TextFormat.f37834a.warning(str3);
                                    return;
                                }
                                throw c6828c.m29548A("Enum type \"" + enumType.getFullName() + "\" has no value with number " + m29565j + '.');
                            }
                        } else {
                            String m29564i = c6828c.m29564i();
                            obj = enumType.findValueByName(m29564i);
                            if (obj == null) {
                                String str4 = "Enum type \"" + enumType.getFullName() + "\" has no value named \"" + m29564i + "\".";
                                if (!this.f37840c) {
                                    throw c6828c.m29548A(str4);
                                }
                                TextFormat.f37834a.warning(str4);
                                return;
                            }
                        }
                        break;
                    case 17:
                    case 18:
                        throw new RuntimeException("Can't get here.");
                }
            }
            if (fieldDescriptor.isRepeated()) {
                mergeTarget.addRepeatedField(fieldDescriptor, obj);
            } else {
                mergeTarget.setField(fieldDescriptor, obj);
            }
        }

        /* renamed from: c */
        public final void m29517c(final C6828c tokenizer, final ExtensionRegistry extensionRegistry, final MessageReflection.MergeTarget target, final Descriptors.FieldDescriptor field, final ExtensionRegistry.ExtensionInfo extension, final TextFormatParseInfoTree.Builder parseTreeBuilder, List<UnknownField> unknownFields) throws ParseException {
            if (!field.isRepeated() || !tokenizer.m29550C(IteratorUtils.f104923a)) {
                m29516b(tokenizer, extensionRegistry, target, field, extension, parseTreeBuilder, unknownFields);
            } else {
                if (tokenizer.m29550C(IteratorUtils.f104924b)) {
                    return;
                }
                while (true) {
                    m29516b(tokenizer, extensionRegistry, target, field, extension, parseTreeBuilder, unknownFields);
                    if (tokenizer.m29550C(IteratorUtils.f104924b)) {
                        return;
                    } else {
                        tokenizer.m29558c(",");
                    }
                }
            }
        }

        /* renamed from: d */
        public final String m29518d(C6828c tokenizer) throws ParseException {
            if (!tokenizer.m29550C(IteratorUtils.f104923a)) {
                return tokenizer.m29564i();
            }
            String m29564i = tokenizer.m29564i();
            while (tokenizer.m29550C(".")) {
                m29564i = m29564i + "." + tokenizer.m29564i();
            }
            if (tokenizer.m29550C("/")) {
                m29564i = m29564i + "/" + tokenizer.m29564i();
                while (tokenizer.m29550C(".")) {
                    m29564i = m29564i + "." + tokenizer.m29564i();
                }
            }
            tokenizer.m29558c(IteratorUtils.f104924b);
            return m29564i;
        }

        /* renamed from: e */
        public final void m29519e(C6828c tokenizer, Descriptors.Descriptor immediateMessageType, String fieldName) {
        }

        /* renamed from: f */
        public final void m29520f(C6828c tokenizer, Descriptors.Descriptor type) throws ParseException {
            boolean m29550C = tokenizer.m29550C(":");
            if (tokenizer.m29578w(IteratorUtils.f104923a)) {
                m29526l(tokenizer, m29550C, type);
            } else if (!m29550C || tokenizer.m29578w("{") || tokenizer.m29578w("<")) {
                m29525k(tokenizer, type);
            } else {
                m29527m(tokenizer);
            }
        }

        /* renamed from: g */
        public final void m29521g(final C6828c tokenizer, final ExtensionRegistry extensionRegistry, MessageReflection.MergeTarget target, final TextFormatParseInfoTree.Builder parseTreeBuilder, List<UnknownField> unknownFields, Descriptors.Descriptor anyDescriptor) throws ParseException {
            String str;
            StringBuilder sb = new StringBuilder();
            while (true) {
                sb.append(tokenizer.m29564i());
                if (tokenizer.m29550C(IteratorUtils.f104924b)) {
                    m29519e(tokenizer, anyDescriptor, sb.toString());
                    tokenizer.m29550C(":");
                    if (tokenizer.m29550C("<")) {
                        str = ">";
                    } else {
                        tokenizer.m29558c("{");
                        str = "}";
                    }
                    String str2 = str;
                    String sb2 = sb.toString();
                    try {
                        Descriptors.Descriptor descriptorForTypeUrl = this.f37838a.getDescriptorForTypeUrl(sb2);
                        if (descriptorForTypeUrl == null) {
                            throw tokenizer.m29581z("Unable to parse Any of type: " + sb2 + ". Please make sure that the TypeRegistry contains the descriptors for the given types.");
                        }
                        DynamicMessage.Builder newBuilderForType = DynamicMessage.getDefaultInstance(descriptorForTypeUrl).newBuilderForType();
                        MessageReflection.C6800b c6800b = new MessageReflection.C6800b(newBuilderForType);
                        while (!tokenizer.m29550C(str2)) {
                            m29522h(tokenizer, extensionRegistry, c6800b, parseTreeBuilder, unknownFields);
                        }
                        target.setField(anyDescriptor.findFieldByName("type_url"), sb.toString());
                        target.setField(anyDescriptor.findFieldByName("value"), newBuilderForType.build().toByteString());
                        return;
                    } catch (InvalidProtocolBufferException unused) {
                        throw tokenizer.m29581z("Invalid valid type URL. Found: " + sb2);
                    }
                }
                if (tokenizer.m29550C("/")) {
                    sb.append("/");
                } else {
                    if (!tokenizer.m29550C(".")) {
                        throw tokenizer.m29548A("Expected a valid type URL.");
                    }
                    sb.append(".");
                }
            }
        }

        /* renamed from: h */
        public final void m29522h(final C6828c tokenizer, final ExtensionRegistry extensionRegistry, final MessageReflection.MergeTarget target, TextFormatParseInfoTree.Builder parseTreeBuilder, List<UnknownField> unknownFields) throws ParseException {
            String m29564i;
            Descriptors.FieldDescriptor fieldDescriptor;
            ExtensionRegistry.ExtensionInfo extensionInfo;
            Descriptors.FieldDescriptor fieldDescriptor2;
            int m29574s = tokenizer.m29574s();
            int m29571p = tokenizer.m29571p();
            Descriptors.Descriptor descriptorForType = target.getDescriptorForType();
            if ("google.protobuf.Any".equals(descriptorForType.getFullName()) && tokenizer.m29550C(IteratorUtils.f104923a)) {
                m29521g(tokenizer, extensionRegistry, target, parseTreeBuilder, unknownFields, descriptorForType);
                return;
            }
            if (tokenizer.m29550C(IteratorUtils.f104923a)) {
                StringBuilder sb = new StringBuilder(tokenizer.m29564i());
                while (tokenizer.m29550C(".")) {
                    sb.append('.');
                    sb.append(tokenizer.m29564i());
                }
                m29564i = sb.toString();
                ExtensionRegistry.ExtensionInfo mo29427j = target.mo29427j(extensionRegistry, m29564i);
                if (mo29427j == null) {
                    unknownFields.add(new UnknownField((tokenizer.m29576u() + 1) + ":" + (tokenizer.m29575t() + 1) + ":\t" + descriptorForType.getFullName() + ".[" + m29564i + IteratorUtils.f104924b, UnknownField.Type.EXTENSION));
                    fieldDescriptor2 = null;
                } else {
                    if (mo29427j.descriptor.getContainingType() != descriptorForType) {
                        throw tokenizer.m29548A("Extension \"" + m29564i + "\" does not extend message type \"" + descriptorForType.getFullName() + "\".");
                    }
                    fieldDescriptor2 = mo29427j.descriptor;
                }
                tokenizer.m29558c(IteratorUtils.f104924b);
                fieldDescriptor = fieldDescriptor2;
                extensionInfo = mo29427j;
            } else {
                m29564i = tokenizer.m29564i();
                Descriptors.FieldDescriptor findFieldByName = descriptorForType.findFieldByName(m29564i);
                if (findFieldByName == null && (findFieldByName = descriptorForType.findFieldByName(m29564i.toLowerCase(Locale.US))) != null && findFieldByName.getType() != Descriptors.FieldDescriptor.Type.GROUP) {
                    findFieldByName = null;
                }
                if (findFieldByName != null && findFieldByName.getType() == Descriptors.FieldDescriptor.Type.GROUP && !findFieldByName.getMessageType().getName().equals(m29564i)) {
                    findFieldByName = null;
                }
                if (findFieldByName == null) {
                    unknownFields.add(new UnknownField((tokenizer.m29576u() + 1) + ":" + (tokenizer.m29575t() + 1) + ":\t" + descriptorForType.getFullName() + "." + m29564i, UnknownField.Type.FIELD));
                }
                fieldDescriptor = findFieldByName;
                extensionInfo = null;
            }
            if (fieldDescriptor == null) {
                m29519e(tokenizer, descriptorForType, m29564i);
                m29520f(tokenizer, descriptorForType);
                return;
            }
            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                m29519e(tokenizer, descriptorForType, fieldDescriptor.getFullName());
                tokenizer.m29550C(":");
                if (parseTreeBuilder != null) {
                    m29517c(tokenizer, extensionRegistry, target, fieldDescriptor, extensionInfo, parseTreeBuilder.getBuilderForSubMessageField(fieldDescriptor), unknownFields);
                } else {
                    m29517c(tokenizer, extensionRegistry, target, fieldDescriptor, extensionInfo, parseTreeBuilder, unknownFields);
                }
            } else {
                m29519e(tokenizer, descriptorForType, fieldDescriptor.getFullName());
                tokenizer.m29558c(":");
                m29517c(tokenizer, extensionRegistry, target, fieldDescriptor, extensionInfo, parseTreeBuilder, unknownFields);
            }
            if (parseTreeBuilder != null) {
                parseTreeBuilder.setLocation(fieldDescriptor, TextFormatParseLocation.m29583a(m29574s, m29571p));
            }
            if (tokenizer.m29550C(AndroidTreeView.f47214k)) {
                return;
            }
            tokenizer.m29550C(",");
        }

        /* renamed from: i */
        public final void m29523i(final C6828c tokenizer, final ExtensionRegistry extensionRegistry, final MessageReflection.MergeTarget target, List<UnknownField> unknownFields) throws ParseException {
            m29522h(tokenizer, extensionRegistry, target, this.f37843f, unknownFields);
        }

        /* renamed from: j */
        public final void m29524j(C6828c tokenizer, Descriptors.Descriptor type) throws ParseException {
            m29519e(tokenizer, type, m29518d(tokenizer));
            m29520f(tokenizer, type);
            if (tokenizer.m29550C(AndroidTreeView.f47214k)) {
                return;
            }
            tokenizer.m29550C(",");
        }

        /* renamed from: k */
        public final void m29525k(C6828c tokenizer, Descriptors.Descriptor type) throws ParseException {
            String str;
            if (tokenizer.m29550C("<")) {
                str = ">";
            } else {
                tokenizer.m29558c("{");
                str = "}";
            }
            while (!tokenizer.m29578w(">") && !tokenizer.m29578w("}")) {
                m29524j(tokenizer, type);
            }
            tokenizer.m29558c(str);
        }

        /* renamed from: l */
        public final void m29526l(C6828c tokenizer, boolean scalarAllowed, Descriptors.Descriptor type) throws ParseException {
            if (!tokenizer.m29550C(IteratorUtils.f104923a) || tokenizer.m29550C(IteratorUtils.f104924b)) {
                return;
            }
            while (true) {
                if (tokenizer.m29578w("{") || tokenizer.m29578w("<")) {
                    m29525k(tokenizer, type);
                } else {
                    if (!scalarAllowed) {
                        throw tokenizer.m29581z("Invalid repeated scalar field: missing \":\" before \"[\".");
                    }
                    m29527m(tokenizer);
                }
                if (tokenizer.m29550C(IteratorUtils.f104924b)) {
                    return;
                } else {
                    tokenizer.m29558c(",");
                }
            }
        }

        /* renamed from: m */
        public final void m29527m(C6828c tokenizer) throws ParseException {
            if (tokenizer.m29551D() || tokenizer.m29554G() || tokenizer.m29555H() || tokenizer.m29556I() || tokenizer.m29552E() || tokenizer.m29553F()) {
                return;
            }
            throw tokenizer.m29581z("Invalid field value: " + tokenizer.f37871c);
        }

        public void merge(final Readable input, final Message.Builder builder) throws IOException {
            merge(input, ExtensionRegistry.getEmptyRegistry(), builder);
        }

        public Parser(TypeRegistry typeRegistry, boolean allowUnknownFields, boolean allowUnknownEnumValues, boolean allowUnknownExtensions, SingularOverwritePolicy singularOverwritePolicy, TextFormatParseInfoTree.Builder parseInfoTreeBuilder) {
            this.f37838a = typeRegistry;
            this.f37839b = allowUnknownFields;
            this.f37840c = allowUnknownEnumValues;
            this.f37841d = allowUnknownExtensions;
            this.f37842e = singularOverwritePolicy;
            this.f37843f = parseInfoTreeBuilder;
        }

        public void merge(final CharSequence input, final Message.Builder builder) throws ParseException {
            merge(input, ExtensionRegistry.getEmptyRegistry(), builder);
        }

        public void merge(final Readable input, final ExtensionRegistry extensionRegistry, final Message.Builder builder) throws IOException {
            merge(m29514n(input), extensionRegistry, builder);
        }

        public void merge(final CharSequence input, final ExtensionRegistry extensionRegistry, final Message.Builder builder) throws ParseException {
            C6828c c6828c = new C6828c(input, null);
            MessageReflection.C6800b c6800b = new MessageReflection.C6800b(builder);
            ArrayList arrayList = new ArrayList();
            while (!c6828c.m29557b()) {
                m29523i(c6828c, extensionRegistry, c6800b, arrayList);
            }
            m29515a(arrayList);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Printer {

        /* renamed from: c */
        public static final Printer f37852c = new Printer(true, TypeRegistry.getEmptyTypeRegistry());

        /* renamed from: a */
        public final boolean f37853a;

        /* renamed from: b */
        public final TypeRegistry f37854b;

        /* renamed from: com.google.protobuf.TextFormat$Printer$a */
        /* loaded from: classes6.dex */
        public static class C6825a implements Comparable<C6825a> {

            /* renamed from: e */
            public Object f37855e;

            /* renamed from: f */
            public MapEntry f37856f;

            /* renamed from: g */
            public final Descriptors.FieldDescriptor.JavaType f37857g;

            public C6825a(Object entry, Descriptors.FieldDescriptor fieldDescriptor) {
                if (entry instanceof MapEntry) {
                    this.f37856f = (MapEntry) entry;
                } else {
                    this.f37855e = entry;
                }
                this.f37857g = m29539b(fieldDescriptor);
            }

            /* renamed from: b */
            public static Descriptors.FieldDescriptor.JavaType m29539b(Descriptors.FieldDescriptor fieldDescriptor) {
                return fieldDescriptor.getMessageType().getFields().get(0).getJavaType();
            }

            @Override // java.lang.Comparable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compareTo(C6825a b) {
                if (m29542d() == null || b.m29542d() == null) {
                    TextFormat.f37834a.info("Invalid key for map field.");
                    return -1;
                }
                int i = C6826a.f37858a[this.f37857g.ordinal()];
                if (i == 1) {
                    return Boolean.valueOf(((Boolean) m29542d()).booleanValue()).compareTo(Boolean.valueOf(((Boolean) b.m29542d()).booleanValue()));
                }
                if (i == 2) {
                    return Long.valueOf(((Long) m29542d()).longValue()).compareTo(Long.valueOf(((Long) b.m29542d()).longValue()));
                }
                if (i == 3) {
                    return Integer.valueOf(((Integer) m29542d()).intValue()).compareTo(Integer.valueOf(((Integer) b.m29542d()).intValue()));
                }
                if (i != 4) {
                    return 0;
                }
                String str = (String) m29542d();
                String str2 = (String) b.m29542d();
                if (str == null && str2 == null) {
                    return 0;
                }
                if (str == null && str2 != null) {
                    return -1;
                }
                if (str == null || str2 != null) {
                    return str.compareTo(str2);
                }
                return 1;
            }

            /* renamed from: c */
            public Object m29541c() {
                MapEntry mapEntry = this.f37856f;
                return mapEntry != null ? mapEntry : this.f37855e;
            }

            /* renamed from: d */
            public Object m29542d() {
                MapEntry mapEntry = this.f37856f;
                if (mapEntry != null) {
                    return mapEntry.getKey();
                }
                return null;
            }
        }

        public Printer(boolean escapeNonAscii, TypeRegistry typeRegistry) {
            this.f37853a = escapeNonAscii;
            this.f37854b = typeRegistry;
        }

        /* renamed from: i */
        public static void m29530i(final int number, final int wireType, final List<?> values, final C6827b generator) throws IOException {
            for (Object obj : values) {
                generator.m29546d(String.valueOf(number));
                generator.m29546d(": ");
                m29531j(wireType, obj, generator);
                generator.m29543a();
            }
        }

        /* renamed from: j */
        public static void m29531j(final int tag, final Object value, final C6827b generator) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                generator.m29546d(TextFormat.unsignedToString(((Long) value).longValue()));
                return;
            }
            if (tagWireType == 1) {
                generator.m29546d(String.format(null, "0x%016x", (Long) value));
                return;
            }
            if (tagWireType != 2) {
                if (tagWireType == 3) {
                    m29532k((UnknownFieldSet) value, generator);
                    return;
                } else {
                    if (tagWireType == 5) {
                        generator.m29546d(String.format(null, "0x%08x", (Integer) value));
                        return;
                    }
                    throw new IllegalArgumentException("Bad tag: " + tag);
                }
            }
            try {
                UnknownFieldSet parseFrom = UnknownFieldSet.parseFrom((ByteString) value);
                generator.m29546d("{");
                generator.m29543a();
                generator.m29544b();
                m29532k(parseFrom, generator);
                generator.m29545c();
                generator.m29546d("}");
            } catch (InvalidProtocolBufferException unused) {
                generator.m29546d("\"");
                generator.m29546d(TextFormat.escapeBytes((ByteString) value));
                generator.m29546d("\"");
            }
        }

        /* renamed from: k */
        public static void m29532k(final UnknownFieldSet unknownFields, final C6827b generator) throws IOException {
            for (Map.Entry<Integer, UnknownFieldSet.Field> entry : unknownFields.asMap().entrySet()) {
                int intValue = entry.getKey().intValue();
                UnknownFieldSet.Field value = entry.getValue();
                m29530i(intValue, 0, value.getVarintList(), generator);
                m29530i(intValue, 5, value.getFixed32List(), generator);
                m29530i(intValue, 1, value.getFixed64List(), generator);
                m29530i(intValue, 2, value.getLengthDelimitedList(), generator);
                for (UnknownFieldSet unknownFieldSet : value.getGroupList()) {
                    generator.m29546d(entry.getKey().toString());
                    generator.m29546d(" {");
                    generator.m29543a();
                    generator.m29544b();
                    m29532k(unknownFieldSet, generator);
                    generator.m29545c();
                    generator.m29546d("}");
                    generator.m29543a();
                }
            }
        }

        /* renamed from: c */
        public final void m29533c(final MessageOrBuilder message, final C6827b generator) throws IOException {
            if (message.getDescriptorForType().getFullName().equals("google.protobuf.Any") && m29534d(message, generator)) {
                return;
            }
            m29537g(message, generator);
        }

        /* renamed from: d */
        public final boolean m29534d(final MessageOrBuilder message, final C6827b generator) throws IOException {
            Descriptors.Descriptor descriptorForType = message.getDescriptorForType();
            Descriptors.FieldDescriptor findFieldByNumber = descriptorForType.findFieldByNumber(1);
            Descriptors.FieldDescriptor findFieldByNumber2 = descriptorForType.findFieldByNumber(2);
            if (findFieldByNumber != null && findFieldByNumber.getType() == Descriptors.FieldDescriptor.Type.STRING && findFieldByNumber2 != null && findFieldByNumber2.getType() == Descriptors.FieldDescriptor.Type.BYTES) {
                String str = (String) message.getField(findFieldByNumber);
                if (str.isEmpty()) {
                    return false;
                }
                Object field = message.getField(findFieldByNumber2);
                try {
                    Descriptors.Descriptor descriptorForTypeUrl = this.f37854b.getDescriptorForTypeUrl(str);
                    if (descriptorForTypeUrl == null) {
                        return false;
                    }
                    DynamicMessage.Builder newBuilderForType = DynamicMessage.getDefaultInstance(descriptorForTypeUrl).newBuilderForType();
                    newBuilderForType.mergeFrom((ByteString) field);
                    generator.m29546d(IteratorUtils.f104923a);
                    generator.m29546d(str);
                    generator.m29546d("] {");
                    generator.m29543a();
                    generator.m29544b();
                    m29533c(newBuilderForType, generator);
                    generator.m29545c();
                    generator.m29546d("}");
                    generator.m29543a();
                    return true;
                } catch (InvalidProtocolBufferException unused) {
                }
            }
            return false;
        }

        /* renamed from: e */
        public final void m29535e(final Descriptors.FieldDescriptor field, final Object value, final C6827b generator) throws IOException {
            if (!field.isMapField()) {
                if (!field.isRepeated()) {
                    m29538h(field, value, generator);
                    return;
                }
                Iterator it2 = ((List) value).iterator();
                while (it2.hasNext()) {
                    m29538h(field, it2.next(), generator);
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it3 = ((List) value).iterator();
            while (it3.hasNext()) {
                arrayList.add(new C6825a(it3.next(), field));
            }
            Collections.sort(arrayList);
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                m29538h(field, ((C6825a) it4.next()).m29541c(), generator);
            }
        }

        public Printer escapingNonAscii(boolean escapeNonAscii) {
            return new Printer(escapeNonAscii, this.f37854b);
        }

        /* renamed from: f */
        public final void m29536f(final Descriptors.FieldDescriptor field, final Object value, final C6827b generator) throws IOException {
            switch (C6826a.f37859b[field.getType().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    generator.m29546d(((Integer) value).toString());
                    return;
                case 4:
                case 5:
                case 6:
                    generator.m29546d(((Long) value).toString());
                    return;
                case 7:
                    generator.m29546d(((Boolean) value).toString());
                    return;
                case 8:
                    generator.m29546d(((Float) value).toString());
                    return;
                case 9:
                    generator.m29546d(((Double) value).toString());
                    return;
                case 10:
                case 11:
                    generator.m29546d(TextFormat.unsignedToString(((Integer) value).intValue()));
                    return;
                case 12:
                case 13:
                    generator.m29546d(TextFormat.unsignedToString(((Long) value).longValue()));
                    return;
                case 14:
                    generator.m29546d("\"");
                    generator.m29546d(this.f37853a ? ocn.m55938e((String) value) : TextFormat.escapeDoubleQuotesAndBackslashes((String) value).replace("\n", "\\n"));
                    generator.m29546d("\"");
                    return;
                case 15:
                    generator.m29546d("\"");
                    if (value instanceof ByteString) {
                        generator.m29546d(TextFormat.escapeBytes((ByteString) value));
                    } else {
                        generator.m29546d(TextFormat.escapeBytes((byte[]) value));
                    }
                    generator.m29546d("\"");
                    return;
                case 16:
                    generator.m29546d(((Descriptors.EnumValueDescriptor) value).getName());
                    return;
                case 17:
                case 18:
                    m29533c((MessageOrBuilder) value, generator);
                    return;
                default:
                    return;
            }
        }

        /* renamed from: g */
        public final void m29537g(final MessageOrBuilder message, final C6827b generator) throws IOException {
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : message.getAllFields().entrySet()) {
                m29535e(entry.getKey(), entry.getValue(), generator);
            }
            m29532k(message.getUnknownFields(), generator);
        }

        /* renamed from: h */
        public final void m29538h(final Descriptors.FieldDescriptor field, final Object value, final C6827b generator) throws IOException {
            if (field.isExtension()) {
                generator.m29546d(IteratorUtils.f104923a);
                if (field.getContainingType().getOptions().getMessageSetWireFormat() && field.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && field.isOptional() && field.getExtensionScope() == field.getMessageType()) {
                    generator.m29546d(field.getMessageType().getFullName());
                } else {
                    generator.m29546d(field.getFullName());
                }
                generator.m29546d(IteratorUtils.f104924b);
            } else if (field.getType() == Descriptors.FieldDescriptor.Type.GROUP) {
                generator.m29546d(field.getMessageType().getName());
            } else {
                generator.m29546d(field.getName());
            }
            Descriptors.FieldDescriptor.JavaType javaType = field.getJavaType();
            Descriptors.FieldDescriptor.JavaType javaType2 = Descriptors.FieldDescriptor.JavaType.MESSAGE;
            if (javaType == javaType2) {
                generator.m29546d(" {");
                generator.m29543a();
                generator.m29544b();
            } else {
                generator.m29546d(": ");
            }
            m29536f(field, value, generator);
            if (field.getJavaType() == javaType2) {
                generator.m29545c();
                generator.m29546d("}");
            }
            generator.m29543a();
        }

        public void print(final MessageOrBuilder message, final Appendable output) throws IOException {
            m29533c(message, TextFormat.m29505h(output));
        }

        public void printField(final Descriptors.FieldDescriptor field, final Object value, final Appendable output) throws IOException {
            m29535e(field, value, TextFormat.m29505h(output));
        }

        public String printFieldToString(final Descriptors.FieldDescriptor field, final Object value) {
            try {
                StringBuilder sb = new StringBuilder();
                printField(field, value, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        public void printFieldValue(final Descriptors.FieldDescriptor field, final Object value, final Appendable output) throws IOException {
            m29536f(field, value, TextFormat.m29505h(output));
        }

        public String printToString(final MessageOrBuilder message) {
            try {
                StringBuilder sb = new StringBuilder();
                print(message, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        public String shortDebugString(final MessageOrBuilder message) {
            try {
                StringBuilder sb = new StringBuilder();
                m29533c(message, TextFormat.m29512o(sb));
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        public Printer usingTypeRegistry(TypeRegistry typeRegistry) {
            if (this.f37854b == TypeRegistry.getEmptyTypeRegistry()) {
                return new Printer(this.f37853a, typeRegistry);
            }
            throw new IllegalArgumentException("Only one typeRegistry is allowed.");
        }

        public void print(final UnknownFieldSet fields, final Appendable output) throws IOException {
            m29532k(fields, TextFormat.m29505h(output));
        }

        public String printToString(final UnknownFieldSet fields) {
            try {
                StringBuilder sb = new StringBuilder();
                print(fields, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        public String shortDebugString(final Descriptors.FieldDescriptor field, final Object value) {
            try {
                StringBuilder sb = new StringBuilder();
                m29535e(field, value, TextFormat.m29512o(sb));
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        public String shortDebugString(final UnknownFieldSet fields) {
            try {
                StringBuilder sb = new StringBuilder();
                m29532k(fields, TextFormat.m29512o(sb));
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class UnknownFieldParseException extends ParseException {
        private final String unknownField;

        public UnknownFieldParseException(final String message) {
            this(-1, -1, "", message);
        }

        public String getUnknownField() {
            return this.unknownField;
        }

        public UnknownFieldParseException(final int line, final int column, final String unknownField, final String message) {
            super(line, column, message);
            this.unknownField = unknownField;
        }
    }

    /* renamed from: com.google.protobuf.TextFormat$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6826a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37858a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f37859b;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f37859b = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f37859b[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[Descriptors.FieldDescriptor.JavaType.values().length];
            f37858a = iArr2;
            try {
                iArr2[Descriptors.FieldDescriptor.JavaType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f37858a[Descriptors.FieldDescriptor.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f37858a[Descriptors.FieldDescriptor.JavaType.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f37858a[Descriptors.FieldDescriptor.JavaType.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    /* renamed from: com.google.protobuf.TextFormat$b */
    /* loaded from: classes6.dex */
    public static final class C6827b {

        /* renamed from: a */
        public final Appendable f37860a;

        /* renamed from: b */
        public final StringBuilder f37861b;

        /* renamed from: c */
        public final boolean f37862c;

        /* renamed from: d */
        public boolean f37863d;

        public /* synthetic */ C6827b(Appendable appendable, boolean z, C6826a c6826a) {
            this(appendable, z);
        }

        /* renamed from: a */
        public void m29543a() throws IOException {
            if (!this.f37862c) {
                this.f37860a.append("\n");
            }
            this.f37863d = true;
        }

        /* renamed from: b */
        public void m29544b() {
            this.f37861b.append(GlideException.C1935a.f14609h);
        }

        /* renamed from: c */
        public void m29545c() {
            int length = this.f37861b.length();
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.f37861b.setLength(length - 2);
        }

        /* renamed from: d */
        public void m29546d(final CharSequence text) throws IOException {
            if (this.f37863d) {
                this.f37863d = false;
                this.f37860a.append(this.f37862c ? " " : this.f37861b);
            }
            this.f37860a.append(text);
        }

        public C6827b(final Appendable output, boolean singleLineMode) {
            this.f37861b = new StringBuilder();
            this.f37863d = false;
            this.f37860a = output;
            this.f37862c = singleLineMode;
        }
    }

    /* renamed from: com.google.protobuf.TextFormat$c */
    /* loaded from: classes6.dex */
    public static final class C6828c {

        /* renamed from: k */
        public static final Pattern f37864k = Pattern.compile("(\\s|(#.*$))++", 8);

        /* renamed from: l */
        public static final Pattern f37865l = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);

        /* renamed from: m */
        public static final Pattern f37866m = Pattern.compile("-?inf(inity)?", 2);

        /* renamed from: n */
        public static final Pattern f37867n = Pattern.compile("-?inf(inity)?f?", 2);

        /* renamed from: o */
        public static final Pattern f37868o = Pattern.compile("nanf?", 2);

        /* renamed from: a */
        public final CharSequence f37869a;

        /* renamed from: b */
        public final Matcher f37870b;

        /* renamed from: c */
        public String f37871c;

        /* renamed from: d */
        public int f37872d;

        /* renamed from: e */
        public int f37873e;

        /* renamed from: f */
        public int f37874f;

        /* renamed from: g */
        public int f37875g;

        /* renamed from: h */
        public int f37876h;

        /* renamed from: i */
        public boolean f37877i;

        /* renamed from: j */
        public boolean f37878j;

        public /* synthetic */ C6828c(CharSequence charSequence, C6826a c6826a) {
            this(charSequence);
        }

        /* renamed from: A */
        public ParseException m29548A(final String description) {
            return new ParseException(this.f37875g + 1, this.f37876h + 1, description);
        }

        /* renamed from: B */
        public final void m29549B() {
            this.f37870b.usePattern(f37864k);
            if (this.f37870b.lookingAt()) {
                Matcher matcher = this.f37870b;
                matcher.region(matcher.end(), this.f37870b.regionEnd());
            }
        }

        /* renamed from: C */
        public boolean m29550C(final String token) {
            if (!this.f37871c.equals(token)) {
                return false;
            }
            m29580y();
            return true;
        }

        /* renamed from: D */
        public boolean m29551D() {
            try {
                m29560e();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        /* renamed from: E */
        public boolean m29552E() {
            try {
                m29562g();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        /* renamed from: F */
        public boolean m29553F() {
            try {
                m29563h();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        /* renamed from: G */
        public boolean m29554G() {
            try {
                m29564i();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        /* renamed from: H */
        public boolean m29555H() {
            try {
                m29566k();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        /* renamed from: I */
        public boolean m29556I() {
            try {
                m29569n();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        /* renamed from: b */
        public boolean m29557b() {
            return this.f37871c.length() == 0;
        }

        /* renamed from: c */
        public void m29558c(final String token) throws ParseException {
            if (m29550C(token)) {
                return;
            }
            throw m29581z("Expected \"" + token + "\".");
        }

        /* renamed from: d */
        public boolean m29559d() throws ParseException {
            if (this.f37871c.equals("true") || this.f37871c.equals("True") || this.f37871c.equals("t") || this.f37871c.equals("1")) {
                m29580y();
                return true;
            }
            if (this.f37871c.equals("false") || this.f37871c.equals("False") || this.f37871c.equals(C6997f.f39671c) || this.f37871c.equals("0")) {
                m29580y();
                return false;
            }
            throw m29581z("Expected \"true\" or \"false\". Found \"" + this.f37871c + "\".");
        }

        @bnd
        /* renamed from: e */
        public ByteString m29560e() throws ParseException {
            ArrayList arrayList = new ArrayList();
            m29561f(arrayList);
            while (true) {
                if (!this.f37871c.startsWith(CloudStorageConstants.SINGLE_QUOTES) && !this.f37871c.startsWith("\"")) {
                    return ByteString.copyFrom(arrayList);
                }
                m29561f(arrayList);
            }
        }

        /* renamed from: f */
        public final void m29561f(List<ByteString> list) throws ParseException {
            char charAt = this.f37871c.length() > 0 ? this.f37871c.charAt(0) : (char) 0;
            if (charAt != '\"' && charAt != '\'') {
                throw m29581z("Expected string.");
            }
            if (this.f37871c.length() >= 2) {
                String str = this.f37871c;
                if (str.charAt(str.length() - 1) == charAt) {
                    try {
                        String str2 = this.f37871c;
                        ByteString unescapeBytes = TextFormat.unescapeBytes(str2.substring(1, str2.length() - 1));
                        m29580y();
                        list.add(unescapeBytes);
                        return;
                    } catch (InvalidEscapeSequenceException e) {
                        throw m29581z(e.getMessage());
                    }
                }
            }
            throw m29581z("String missing ending quote.");
        }

        /* renamed from: g */
        public double m29562g() throws ParseException {
            if (f37866m.matcher(this.f37871c).matches()) {
                boolean startsWith = this.f37871c.startsWith("-");
                m29580y();
                return startsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            if (this.f37871c.equalsIgnoreCase("nan")) {
                m29580y();
                return Double.NaN;
            }
            try {
                double parseDouble = Double.parseDouble(this.f37871c);
                m29580y();
                return parseDouble;
            } catch (NumberFormatException e) {
                throw m29570o(e);
            }
        }

        /* renamed from: h */
        public float m29563h() throws ParseException {
            if (f37867n.matcher(this.f37871c).matches()) {
                boolean startsWith = this.f37871c.startsWith("-");
                m29580y();
                return startsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            if (f37868o.matcher(this.f37871c).matches()) {
                m29580y();
                return Float.NaN;
            }
            try {
                float parseFloat = Float.parseFloat(this.f37871c);
                m29580y();
                return parseFloat;
            } catch (NumberFormatException e) {
                throw m29570o(e);
            }
        }

        /* renamed from: i */
        public String m29564i() throws ParseException {
            for (int i = 0; i < this.f37871c.length(); i++) {
                char charAt = this.f37871c.charAt(i);
                if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && !(('0' <= charAt && charAt <= '9') || charAt == '_' || charAt == '.'))) {
                    throw m29581z("Expected identifier. Found '" + this.f37871c + CloudStorageConstants.SINGLE_QUOTES);
                }
            }
            String str = this.f37871c;
            m29580y();
            return str;
        }

        /* renamed from: j */
        public int m29565j() throws ParseException {
            try {
                int m29506i = TextFormat.m29506i(this.f37871c);
                m29580y();
                return m29506i;
            } catch (NumberFormatException e) {
                throw m29577v(e);
            }
        }

        /* renamed from: k */
        public long m29566k() throws ParseException {
            try {
                long m29507j = TextFormat.m29507j(this.f37871c);
                m29580y();
                return m29507j;
            } catch (NumberFormatException e) {
                throw m29577v(e);
            }
        }

        /* renamed from: l */
        public String m29567l() throws ParseException {
            return m29560e().toStringUtf8();
        }

        /* renamed from: m */
        public int m29568m() throws ParseException {
            try {
                int m29509l = TextFormat.m29509l(this.f37871c);
                m29580y();
                return m29509l;
            } catch (NumberFormatException e) {
                throw m29577v(e);
            }
        }

        /* renamed from: n */
        public long m29569n() throws ParseException {
            try {
                long m29510m = TextFormat.m29510m(this.f37871c);
                m29580y();
                return m29510m;
            } catch (NumberFormatException e) {
                throw m29577v(e);
            }
        }

        /* renamed from: o */
        public final ParseException m29570o(final NumberFormatException e) {
            return m29581z("Couldn't parse number: " + e.getMessage());
        }

        /* renamed from: p */
        public int m29571p() {
            return this.f37874f;
        }

        /* renamed from: q */
        public boolean m29572q() {
            return this.f37877i;
        }

        /* renamed from: r */
        public boolean m29573r() {
            return this.f37878j;
        }

        /* renamed from: s */
        public int m29574s() {
            return this.f37873e;
        }

        /* renamed from: t */
        public int m29575t() {
            return this.f37876h;
        }

        /* renamed from: u */
        public int m29576u() {
            return this.f37875g;
        }

        /* renamed from: v */
        public final ParseException m29577v(final NumberFormatException e) {
            return m29581z("Couldn't parse integer: " + e.getMessage());
        }

        /* renamed from: w */
        public boolean m29578w(String text) {
            return this.f37871c.equals(text);
        }

        /* renamed from: x */
        public boolean m29579x() {
            if (this.f37871c.length() == 0) {
                return false;
            }
            char charAt = this.f37871c.charAt(0);
            return ('0' <= charAt && charAt <= '9') || charAt == '-' || charAt == '+';
        }

        /* renamed from: y */
        public void m29580y() {
            this.f37875g = this.f37873e;
            this.f37876h = this.f37874f;
            while (this.f37872d < this.f37870b.regionStart()) {
                if (this.f37869a.charAt(this.f37872d) == '\n') {
                    this.f37873e++;
                    this.f37874f = 0;
                } else {
                    this.f37874f++;
                }
                this.f37872d++;
            }
            if (this.f37870b.regionStart() == this.f37870b.regionEnd()) {
                this.f37871c = "";
                return;
            }
            this.f37870b.usePattern(f37865l);
            if (this.f37870b.lookingAt()) {
                this.f37871c = this.f37870b.group();
                Matcher matcher = this.f37870b;
                matcher.region(matcher.end(), this.f37870b.regionEnd());
            } else {
                this.f37871c = String.valueOf(this.f37869a.charAt(this.f37872d));
                Matcher matcher2 = this.f37870b;
                matcher2.region(this.f37872d + 1, matcher2.regionEnd());
            }
            m29549B();
        }

        /* renamed from: z */
        public ParseException m29581z(final String description) {
            return new ParseException(this.f37873e + 1, this.f37874f + 1, description);
        }

        public C6828c(final CharSequence text) {
            this.f37872d = 0;
            this.f37873e = 0;
            this.f37874f = 0;
            this.f37875g = 0;
            this.f37876h = 0;
            this.f37877i = false;
            this.f37878j = false;
            this.f37869a = text;
            this.f37870b = f37864k.matcher(text);
            m29549B();
            m29580y();
        }
    }

    /* renamed from: d */
    public static int m29501d(final byte c) {
        if (48 > c || c > 57) {
            return ((97 > c || c > 122) ? c - 65 : c - 97) + 10;
        }
        return c - 48;
    }

    /* renamed from: e */
    public static String m29502e(final String input) {
        return escapeBytes(ByteString.copyFromUtf8(input));
    }

    public static String escapeBytes(ByteString input) {
        return ocn.m55934a(input);
    }

    public static String escapeDoubleQuotesAndBackslashes(final String input) {
        return ocn.m55937d(input);
    }

    /* renamed from: f */
    public static boolean m29503f(final byte c) {
        return (48 <= c && c <= 57) || (97 <= c && c <= 102) || (65 <= c && c <= 70);
    }

    /* renamed from: g */
    public static boolean m29504g(final byte c) {
        return 48 <= c && c <= 55;
    }

    public static Parser getParser() {
        return f37836c;
    }

    /* renamed from: h */
    public static C6827b m29505h(Appendable output) {
        return new C6827b(output, false, null);
    }

    /* renamed from: i */
    public static int m29506i(final String text) throws NumberFormatException {
        return (int) m29508k(text, true, false);
    }

    /* renamed from: j */
    public static long m29507j(final String text) throws NumberFormatException {
        return m29508k(text, true, true);
    }

    /* renamed from: k */
    public static long m29508k(final String text, final boolean isSigned, final boolean isLong) throws NumberFormatException {
        int i;
        int i2 = 0;
        if (text.startsWith("-", 0)) {
            if (!isSigned) {
                throw new NumberFormatException("Number must be positive: " + text);
            }
            i2 = 1;
        }
        int i3 = i2;
        if (text.startsWith("0x", i2)) {
            i2 += 2;
            i = 16;
        } else {
            i = text.startsWith("0", i2) ? 8 : 10;
        }
        String substring = text.substring(i2);
        if (substring.length() < 16) {
            long parseLong = Long.parseLong(substring, i);
            if (i3 != 0) {
                parseLong = -parseLong;
            }
            if (isLong) {
                return parseLong;
            }
            if (isSigned) {
                if (parseLong <= 2147483647L && parseLong >= ParserBase.f21225q) {
                    return parseLong;
                }
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + text);
            }
            if (parseLong < 4294967296L && parseLong >= 0) {
                return parseLong;
            }
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + text);
        }
        BigInteger bigInteger = new BigInteger(substring, i);
        if (i3 != 0) {
            bigInteger = bigInteger.negate();
        }
        if (isLong) {
            if (isSigned) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: " + text);
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + text);
            }
        } else if (isSigned) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + text);
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + text);
        }
        return bigInteger.longValue();
    }

    /* renamed from: l */
    public static int m29509l(final String text) throws NumberFormatException {
        return (int) m29508k(text, false, false);
    }

    /* renamed from: m */
    public static long m29510m(final String text) throws NumberFormatException {
        return m29508k(text, false, true);
    }

    public static void merge(final Readable input, final Message.Builder builder) throws IOException {
        f37836c.merge(input, builder);
    }

    /* renamed from: n */
    public static void m29511n(final int tag, final Object value, final C6827b generator) throws IOException {
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            generator.m29546d(unsignedToString(((Long) value).longValue()));
            return;
        }
        if (tagWireType == 1) {
            generator.m29546d(String.format(null, "0x%016x", (Long) value));
            return;
        }
        if (tagWireType != 2) {
            if (tagWireType == 3) {
                Printer.m29532k((UnknownFieldSet) value, generator);
                return;
            } else {
                if (tagWireType == 5) {
                    generator.m29546d(String.format(null, "0x%08x", (Integer) value));
                    return;
                }
                throw new IllegalArgumentException("Bad tag: " + tag);
            }
        }
        try {
            UnknownFieldSet parseFrom = UnknownFieldSet.parseFrom((ByteString) value);
            generator.m29546d("{");
            generator.m29543a();
            generator.m29544b();
            Printer.m29532k(parseFrom, generator);
            generator.m29545c();
            generator.m29546d("}");
        } catch (InvalidProtocolBufferException unused) {
            generator.m29546d("\"");
            generator.m29546d(escapeBytes((ByteString) value));
            generator.m29546d("\"");
        }
    }

    /* renamed from: o */
    public static C6827b m29512o(Appendable output) {
        return new C6827b(output, true, null);
    }

    /* renamed from: p */
    public static String m29513p(final String input) throws InvalidEscapeSequenceException {
        return unescapeBytes(input).toStringUtf8();
    }

    public static <T extends Message> T parse(CharSequence charSequence, Class<T> cls) throws ParseException {
        Message.Builder newBuilderForType = ((Message) Internal.getDefaultInstance(cls)).newBuilderForType();
        merge(charSequence, newBuilderForType);
        return (T) newBuilderForType.build();
    }

    @vki(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().print(message, output)")
    @Deprecated
    public static void print(final MessageOrBuilder message, final Appendable output) throws IOException {
        printer().print(message, output);
    }

    @Deprecated
    public static void printField(final Descriptors.FieldDescriptor field, final Object value, final Appendable output) throws IOException {
        printer().printField(field, value, output);
    }

    @Deprecated
    public static String printFieldToString(final Descriptors.FieldDescriptor field, final Object value) {
        return printer().printFieldToString(field, value);
    }

    @vki(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().printFieldValue(field, value, output)")
    @Deprecated
    public static void printFieldValue(final Descriptors.FieldDescriptor field, final Object value, final Appendable output) throws IOException {
        printer().printFieldValue(field, value, output);
    }

    @vki(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().printToString(message)")
    @Deprecated
    public static String printToString(final MessageOrBuilder message) {
        return printer().printToString(message);
    }

    @vki(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().escapingNonAscii(false).printToString(message)")
    @Deprecated
    public static String printToUnicodeString(final MessageOrBuilder message) {
        return printer().escapingNonAscii(false).printToString(message);
    }

    @vki(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().escapingNonAscii(false).print(message, output)")
    @Deprecated
    public static void printUnicode(final MessageOrBuilder message, final Appendable output) throws IOException {
        printer().escapingNonAscii(false).print(message, output);
    }

    @Deprecated
    public static void printUnicodeFieldValue(final Descriptors.FieldDescriptor field, final Object value, final Appendable output) throws IOException {
        printer().escapingNonAscii(false).printFieldValue(field, value, output);
    }

    public static void printUnknownFieldValue(final int tag, final Object value, final Appendable output) throws IOException {
        m29511n(tag, value, m29505h(output));
    }

    public static Printer printer() {
        return Printer.f37852c;
    }

    public static String shortDebugString(final MessageOrBuilder message) {
        return printer().shortDebugString(message);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x00a7. Please report as an issue. */
    public static ByteString unescapeBytes(CharSequence charString) throws InvalidEscapeSequenceException {
        int i;
        int i2;
        int i3;
        int length;
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(charString.toString());
        int size = copyFromUtf8.size();
        byte[] bArr = new byte[size];
        int i4 = 0;
        int i5 = 0;
        while (i4 < copyFromUtf8.size()) {
            byte byteAt = copyFromUtf8.byteAt(i4);
            if (byteAt == 92) {
                i4++;
                if (i4 >= copyFromUtf8.size()) {
                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
                }
                byte byteAt2 = copyFromUtf8.byteAt(i4);
                if (m29504g(byteAt2)) {
                    int m29501d = m29501d(byteAt2);
                    int i6 = i4 + 1;
                    if (i6 < copyFromUtf8.size() && m29504g(copyFromUtf8.byteAt(i6))) {
                        m29501d = (m29501d * 8) + m29501d(copyFromUtf8.byteAt(i6));
                        i4 = i6;
                    }
                    int i7 = i4 + 1;
                    if (i7 < copyFromUtf8.size() && m29504g(copyFromUtf8.byteAt(i7))) {
                        m29501d = (m29501d * 8) + m29501d(copyFromUtf8.byteAt(i7));
                        i4 = i7;
                    }
                    i = i5 + 1;
                    bArr[i5] = (byte) m29501d;
                } else {
                    if (byteAt2 == 34) {
                        i2 = i5 + 1;
                        bArr[i5] = 34;
                    } else if (byteAt2 == 39) {
                        i2 = i5 + 1;
                        bArr[i5] = Cea608Decoder.f26816Y;
                    } else if (byteAt2 != 63) {
                        if (byteAt2 == 85) {
                            int i8 = i4 + 1;
                            i3 = i8 + 7;
                            if (i3 >= copyFromUtf8.size()) {
                                throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U' with too few hex chars");
                            }
                            int i9 = 0;
                            int i10 = i8;
                            while (true) {
                                int i11 = i8 + 8;
                                if (i10 < i11) {
                                    byte byteAt3 = copyFromUtf8.byteAt(i10);
                                    if (!m29503f(byteAt3)) {
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U' with too few hex chars");
                                    }
                                    i9 = (i9 << 4) | m29501d(byteAt3);
                                    i10++;
                                } else {
                                    if (!Character.isValidCodePoint(i9)) {
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U" + copyFromUtf8.substring(i8, i11).toStringUtf8() + "' is not a valid code point value");
                                    }
                                    Character.UnicodeBlock of = Character.UnicodeBlock.of(i9);
                                    if (of != null && (of.equals(Character.UnicodeBlock.LOW_SURROGATES) || of.equals(Character.UnicodeBlock.HIGH_SURROGATES) || of.equals(Character.UnicodeBlock.HIGH_PRIVATE_USE_SURROGATES))) {
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U" + copyFromUtf8.substring(i8, i11).toStringUtf8() + "' refers to a surrogate code unit");
                                    }
                                    byte[] bytes = new String(new int[]{i9}, 0, 1).getBytes(Internal.f37667b);
                                    System.arraycopy(bytes, 0, bArr, i5, bytes.length);
                                    length = bytes.length;
                                }
                            }
                        } else if (byteAt2 == 92) {
                            i2 = i5 + 1;
                            bArr[i5] = UTF8JsonGenerator.f21291k;
                        } else if (byteAt2 == 102) {
                            i2 = i5 + 1;
                            bArr[i5] = 12;
                        } else if (byteAt2 == 110) {
                            i2 = i5 + 1;
                            bArr[i5] = 10;
                        } else if (byteAt2 == 114) {
                            i2 = i5 + 1;
                            bArr[i5] = 13;
                        } else if (byteAt2 == 120) {
                            i4++;
                            if (i4 >= copyFromUtf8.size() || !m29503f(copyFromUtf8.byteAt(i4))) {
                                throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
                            }
                            int m29501d2 = m29501d(copyFromUtf8.byteAt(i4));
                            int i12 = i4 + 1;
                            if (i12 < copyFromUtf8.size() && m29503f(copyFromUtf8.byteAt(i12))) {
                                m29501d2 = (m29501d2 * 16) + m29501d(copyFromUtf8.byteAt(i12));
                                i4 = i12;
                            }
                            i = i5 + 1;
                            bArr[i5] = (byte) m29501d2;
                        } else if (byteAt2 == 97) {
                            i2 = i5 + 1;
                            bArr[i5] = 7;
                        } else if (byteAt2 != 98) {
                            switch (byteAt2) {
                                case 116:
                                    i2 = i5 + 1;
                                    bArr[i5] = 9;
                                    break;
                                case 117:
                                    int i13 = i4 + 1;
                                    i3 = i13 + 3;
                                    if (i3 < copyFromUtf8.size() && m29503f(copyFromUtf8.byteAt(i13))) {
                                        int i14 = i13 + 1;
                                        if (m29503f(copyFromUtf8.byteAt(i14))) {
                                            int i15 = i13 + 2;
                                            if (m29503f(copyFromUtf8.byteAt(i15)) && m29503f(copyFromUtf8.byteAt(i3))) {
                                                char m29501d3 = (char) ((m29501d(copyFromUtf8.byteAt(i13)) << 12) | (m29501d(copyFromUtf8.byteAt(i14)) << 8) | (m29501d(copyFromUtf8.byteAt(i15)) << 4) | m29501d(copyFromUtf8.byteAt(i3)));
                                                if (m29501d3 >= 55296 && m29501d3 <= 57343) {
                                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\u' refers to a surrogate");
                                                }
                                                byte[] bytes2 = Character.toString(m29501d3).getBytes(Internal.f37667b);
                                                System.arraycopy(bytes2, 0, bArr, i5, bytes2.length);
                                                length = bytes2.length;
                                                break;
                                            }
                                        }
                                    }
                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\u' with too few hex chars");
                                case 118:
                                    i2 = i5 + 1;
                                    bArr[i5] = 11;
                                    break;
                                default:
                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\" + ((char) byteAt2) + Chars.QUOTE);
                            }
                        } else {
                            i2 = i5 + 1;
                            bArr[i5] = 8;
                        }
                        i5 += length;
                        i4 = i3;
                        i4++;
                    } else {
                        i2 = i5 + 1;
                        bArr[i5] = 63;
                    }
                    i5 = i2;
                    i4++;
                }
            } else {
                i = i5 + 1;
                bArr[i5] = byteAt;
            }
            i5 = i;
            i4++;
        }
        return size == i5 ? ByteString.wrap(bArr) : ByteString.copyFrom(bArr, 0, i5);
    }

    public static String unsignedToString(final int value) {
        if (value >= 0) {
            return Integer.toString(value);
        }
        return Long.toString(value & 4294967295L);
    }

    public static String escapeBytes(byte[] input) {
        return ocn.m55936c(input);
    }

    public static void merge(final CharSequence input, final Message.Builder builder) throws ParseException {
        f37836c.merge(input, builder);
    }

    @Deprecated
    public static void print(final UnknownFieldSet fields, final Appendable output) throws IOException {
        printer().print(fields, output);
    }

    @Deprecated
    public static String printToString(final UnknownFieldSet fields) {
        return printer().printToString(fields);
    }

    @Deprecated
    public static String printToUnicodeString(final UnknownFieldSet fields) {
        return printer().escapingNonAscii(false).printToString(fields);
    }

    @Deprecated
    public static void printUnicode(final UnknownFieldSet fields, final Appendable output) throws IOException {
        printer().escapingNonAscii(false).print(fields, output);
    }

    @Deprecated
    public static String shortDebugString(final Descriptors.FieldDescriptor field, final Object value) {
        return printer().shortDebugString(field, value);
    }

    public static void merge(final Readable input, final ExtensionRegistry extensionRegistry, final Message.Builder builder) throws IOException {
        f37836c.merge(input, extensionRegistry, builder);
    }

    @Deprecated
    public static String shortDebugString(final UnknownFieldSet fields) {
        return printer().shortDebugString(fields);
    }

    public static String unsignedToString(final long value) {
        if (value >= 0) {
            return Long.toString(value);
        }
        return BigInteger.valueOf(value & Long.MAX_VALUE).setBit(63).toString();
    }

    public static void merge(final CharSequence input, final ExtensionRegistry extensionRegistry, final Message.Builder builder) throws ParseException {
        f37836c.merge(input, extensionRegistry, builder);
    }

    public static <T extends Message> T parse(CharSequence charSequence, ExtensionRegistry extensionRegistry, Class<T> cls) throws ParseException {
        Message.Builder newBuilderForType = ((Message) Internal.getDefaultInstance(cls)).newBuilderForType();
        merge(charSequence, extensionRegistry, newBuilderForType);
        return (T) newBuilderForType.build();
    }
}
