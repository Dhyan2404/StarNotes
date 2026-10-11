package com.google.protobuf;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.FieldSet;
import com.google.protobuf.Internal;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.TextFormat;
import com.google.protobuf.WireFormat;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.sunia.HTREnginev2.htd;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

@htd
/* loaded from: classes6.dex */
public final class Descriptors {

    /* renamed from: a */
    public static final Logger f37284a = Logger.getLogger(Descriptors.class.getName());

    /* renamed from: b */
    public static final int[] f37285b = new int[0];

    /* renamed from: c */
    public static final Descriptor[] f37286c = new Descriptor[0];

    /* renamed from: d */
    public static final FieldDescriptor[] f37287d = new FieldDescriptor[0];

    /* renamed from: e */
    public static final EnumDescriptor[] f37288e = new EnumDescriptor[0];

    /* renamed from: f */
    public static final ServiceDescriptor[] f37289f = new ServiceDescriptor[0];

    /* renamed from: g */
    public static final OneofDescriptor[] f37290g = new OneofDescriptor[0];

    /* loaded from: classes6.dex */
    public static final class Descriptor extends GenericDescriptor {

        /* renamed from: e */
        public final int f37291e;

        /* renamed from: f */
        public DescriptorProtos.DescriptorProto f37292f;

        /* renamed from: g */
        public final String f37293g;

        /* renamed from: h */
        public final FileDescriptor f37294h;

        /* renamed from: i */
        public final Descriptor f37295i;

        /* renamed from: j */
        public final Descriptor[] f37296j;

        /* renamed from: k */
        public final EnumDescriptor[] f37297k;

        /* renamed from: l */
        public final FieldDescriptor[] f37298l;

        /* renamed from: m */
        public final FieldDescriptor[] f37299m;

        /* renamed from: n */
        public final FieldDescriptor[] f37300n;

        /* renamed from: o */
        public final OneofDescriptor[] f37301o;

        /* renamed from: p */
        public final int f37302p;

        /* renamed from: q */
        public final int[] f37303q;

        /* renamed from: r */
        public final int[] f37304r;

        public /* synthetic */ Descriptor(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, C6720a c6720a) throws DescriptorValidationException {
            this(descriptorProto, fileDescriptor, descriptor, i);
        }

        /* renamed from: c */
        public final void m28987c() throws DescriptorValidationException {
            for (Descriptor descriptor : this.f37296j) {
                descriptor.m28987c();
            }
            for (FieldDescriptor fieldDescriptor : this.f37298l) {
                fieldDescriptor.m29014e();
            }
            Arrays.sort(this.f37299m);
            m28989e();
            for (FieldDescriptor fieldDescriptor2 : this.f37300n) {
                fieldDescriptor2.m29014e();
            }
        }

        /* renamed from: d */
        public final void m28988d(final DescriptorProtos.DescriptorProto proto) {
            this.f37292f = proto;
            int i = 0;
            int i2 = 0;
            while (true) {
                Descriptor[] descriptorArr = this.f37296j;
                if (i2 >= descriptorArr.length) {
                    break;
                }
                descriptorArr[i2].m28988d(proto.getNestedType(i2));
                i2++;
            }
            int i3 = 0;
            while (true) {
                OneofDescriptor[] oneofDescriptorArr = this.f37301o;
                if (i3 >= oneofDescriptorArr.length) {
                    break;
                }
                oneofDescriptorArr[i3].m29031f(proto.getOneofDecl(i3));
                i3++;
            }
            int i4 = 0;
            while (true) {
                EnumDescriptor[] enumDescriptorArr = this.f37297k;
                if (i4 >= enumDescriptorArr.length) {
                    break;
                }
                enumDescriptorArr[i4].m29002d(proto.getEnumType(i4));
                i4++;
            }
            int i5 = 0;
            while (true) {
                FieldDescriptor[] fieldDescriptorArr = this.f37298l;
                if (i5 >= fieldDescriptorArr.length) {
                    break;
                }
                fieldDescriptorArr[i5].m29015g(proto.getField(i5));
                i5++;
            }
            while (true) {
                FieldDescriptor[] fieldDescriptorArr2 = this.f37300n;
                if (i >= fieldDescriptorArr2.length) {
                    return;
                }
                fieldDescriptorArr2[i].m29015g(proto.getExtension(i));
                i++;
            }
        }

        /* renamed from: e */
        public final void m28989e() throws DescriptorValidationException {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                FieldDescriptor[] fieldDescriptorArr = this.f37299m;
                if (i2 >= fieldDescriptorArr.length) {
                    return;
                }
                FieldDescriptor fieldDescriptor = fieldDescriptorArr[i];
                FieldDescriptor fieldDescriptor2 = fieldDescriptorArr[i2];
                if (fieldDescriptor.getNumber() == fieldDescriptor2.getNumber()) {
                    throw new DescriptorValidationException(fieldDescriptor2, "Field number " + fieldDescriptor2.getNumber() + " has already been used in \"" + fieldDescriptor2.getContainingType().getFullName() + "\" by field \"" + fieldDescriptor.getName() + "\".", (C6720a) null);
                }
                i = i2;
            }
        }

        public EnumDescriptor findEnumTypeByName(final String name) {
            GenericDescriptor m28993c = this.f37294h.f37350l.m28993c(this.f37293g + '.' + name);
            if (m28993c instanceof EnumDescriptor) {
                return (EnumDescriptor) m28993c;
            }
            return null;
        }

        public FieldDescriptor findFieldByName(final String name) {
            GenericDescriptor m28993c = this.f37294h.f37350l.m28993c(this.f37293g + '.' + name);
            if (m28993c instanceof FieldDescriptor) {
                return (FieldDescriptor) m28993c;
            }
            return null;
        }

        public FieldDescriptor findFieldByNumber(final int number) {
            FieldDescriptor[] fieldDescriptorArr = this.f37299m;
            return (FieldDescriptor) Descriptors.m28983j(fieldDescriptorArr, fieldDescriptorArr.length, FieldDescriptor.f37328r, number);
        }

        public Descriptor findNestedTypeByName(final String name) {
            GenericDescriptor m28993c = this.f37294h.f37350l.m28993c(this.f37293g + '.' + name);
            if (m28993c instanceof Descriptor) {
                return (Descriptor) m28993c;
            }
            return null;
        }

        public Descriptor getContainingType() {
            return this.f37295i;
        }

        public List<EnumDescriptor> getEnumTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.f37297k));
        }

        public List<FieldDescriptor> getExtensions() {
            return Collections.unmodifiableList(Arrays.asList(this.f37300n));
        }

        public List<FieldDescriptor> getFields() {
            return Collections.unmodifiableList(Arrays.asList(this.f37298l));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.f37294h;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.f37293g;
        }

        public int getIndex() {
            return this.f37291e;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.f37292f.getName();
        }

        public List<Descriptor> getNestedTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.f37296j));
        }

        public List<OneofDescriptor> getOneofs() {
            return Collections.unmodifiableList(Arrays.asList(this.f37301o));
        }

        public DescriptorProtos.MessageOptions getOptions() {
            return this.f37292f.getOptions();
        }

        public List<OneofDescriptor> getRealOneofs() {
            return Collections.unmodifiableList(Arrays.asList(this.f37301o).subList(0, this.f37302p));
        }

        public boolean isExtendable() {
            return !this.f37292f.getExtensionRangeList().isEmpty();
        }

        public boolean isExtensionNumber(final int number) {
            int binarySearch = Arrays.binarySearch(this.f37303q, number);
            if (binarySearch < 0) {
                binarySearch = (~binarySearch) - 1;
            }
            return binarySearch >= 0 && number < this.f37304r[binarySearch];
        }

        public boolean isReservedName(final String name) {
            Internal.m29343a(name);
            Iterator<String> it2 = this.f37292f.getReservedNameList().iterator();
            while (it2.hasNext()) {
                if (it2.next().equals(name)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isReservedNumber(final int number) {
            for (DescriptorProtos.DescriptorProto.ReservedRange reservedRange : this.f37292f.getReservedRangeList()) {
                if (reservedRange.getStart() <= number && number < reservedRange.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        public Descriptor(final String fullname) throws DescriptorValidationException {
            super(null);
            String str;
            String str2;
            int lastIndexOf = fullname.lastIndexOf(46);
            if (lastIndexOf != -1) {
                str2 = fullname.substring(lastIndexOf + 1);
                str = fullname.substring(0, lastIndexOf);
            } else {
                str = "";
                str2 = fullname;
            }
            this.f37291e = 0;
            this.f37292f = DescriptorProtos.DescriptorProto.newBuilder().setName(str2).addExtensionRange(DescriptorProtos.DescriptorProto.ExtensionRange.newBuilder().setStart(1).setEnd(536870912).build()).build();
            this.f37293g = fullname;
            this.f37295i = null;
            this.f37296j = Descriptors.f37286c;
            this.f37297k = Descriptors.f37288e;
            this.f37298l = Descriptors.f37287d;
            this.f37299m = Descriptors.f37287d;
            this.f37300n = Descriptors.f37287d;
            this.f37301o = Descriptors.f37290g;
            this.f37302p = 0;
            this.f37294h = new FileDescriptor(str, this);
            this.f37303q = new int[]{1};
            this.f37304r = new int[]{536870912};
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.DescriptorProto toProto() {
            return this.f37292f;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Descriptor(final com.google.protobuf.DescriptorProtos.DescriptorProto r11, final com.google.protobuf.Descriptors.FileDescriptor r12, final com.google.protobuf.Descriptors.Descriptor r13, final int r14) throws com.google.protobuf.Descriptors.DescriptorValidationException {
            /*
                Method dump skipped, instructions count: 469
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Descriptors.Descriptor.<init>(com.google.protobuf.DescriptorProtos$DescriptorProto, com.google.protobuf.Descriptors$FileDescriptor, com.google.protobuf.Descriptors$Descriptor, int):void");
        }
    }

    /* loaded from: classes6.dex */
    public static final class DescriptorPool {

        /* renamed from: a */
        public final Set<FileDescriptor> f37305a;

        /* renamed from: b */
        public final boolean f37306b;

        /* renamed from: c */
        public final Map<String, GenericDescriptor> f37307c = new HashMap();

        /* loaded from: classes6.dex */
        public enum SearchFilter {
            TYPES_ONLY,
            AGGREGATES_ONLY,
            ALL_SYMBOLS
        }

        /* renamed from: com.google.protobuf.Descriptors$DescriptorPool$a */
        /* loaded from: classes6.dex */
        public static final class C6715a extends GenericDescriptor {

            /* renamed from: e */
            public final String f37308e;

            /* renamed from: f */
            public final String f37309f;

            /* renamed from: g */
            public final FileDescriptor f37310g;

            public C6715a(final String name, final String fullName, final FileDescriptor file) {
                super(null);
                this.f37310g = file;
                this.f37309f = fullName;
                this.f37308e = name;
            }

            @Override // com.google.protobuf.Descriptors.GenericDescriptor
            public FileDescriptor getFile() {
                return this.f37310g;
            }

            @Override // com.google.protobuf.Descriptors.GenericDescriptor
            public String getFullName() {
                return this.f37309f;
            }

            @Override // com.google.protobuf.Descriptors.GenericDescriptor
            public String getName() {
                return this.f37308e;
            }

            @Override // com.google.protobuf.Descriptors.GenericDescriptor
            public Message toProto() {
                return this.f37310g.toProto();
            }
        }

        public DescriptorPool(final FileDescriptor[] dependencies, boolean allowUnknownDependencies) {
            this.f37305a = Collections.newSetFromMap(new IdentityHashMap(dependencies.length));
            this.f37306b = allowUnknownDependencies;
            for (FileDescriptor fileDescriptor : dependencies) {
                this.f37305a.add(fileDescriptor);
                m28995e(fileDescriptor);
            }
            for (FileDescriptor fileDescriptor2 : this.f37305a) {
                try {
                    m28991a(fileDescriptor2.getPackage(), fileDescriptor2);
                } catch (DescriptorValidationException e) {
                    throw new AssertionError(e);
                }
            }
        }

        /* renamed from: i */
        public static void m28990i(final GenericDescriptor descriptor) throws DescriptorValidationException {
            String name = descriptor.getName();
            C6720a c6720a = null;
            if (name.length() == 0) {
                throw new DescriptorValidationException(descriptor, "Missing name.", c6720a);
            }
            for (int i = 0; i < name.length(); i++) {
                char charAt = name.charAt(i);
                if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && charAt != '_' && ('0' > charAt || charAt > '9' || i <= 0))) {
                    throw new DescriptorValidationException(descriptor, '\"' + name + "\" is not a valid identifier.", c6720a);
                }
            }
        }

        /* renamed from: a */
        public void m28991a(final String fullName, final FileDescriptor file) throws DescriptorValidationException {
            String substring;
            int lastIndexOf = fullName.lastIndexOf(46);
            if (lastIndexOf == -1) {
                substring = fullName;
            } else {
                m28991a(fullName.substring(0, lastIndexOf), file);
                substring = fullName.substring(lastIndexOf + 1);
            }
            GenericDescriptor put = this.f37307c.put(fullName, new C6715a(substring, fullName, file));
            if (put != null) {
                this.f37307c.put(fullName, put);
                if (put instanceof C6715a) {
                    return;
                }
                throw new DescriptorValidationException(file, '\"' + substring + "\" is already defined (as something other than a package) in file \"" + put.getFile().getName() + "\".", (C6720a) null);
            }
        }

        /* renamed from: b */
        public void m28992b(final GenericDescriptor descriptor) throws DescriptorValidationException {
            m28990i(descriptor);
            String fullName = descriptor.getFullName();
            GenericDescriptor put = this.f37307c.put(fullName, descriptor);
            if (put != null) {
                this.f37307c.put(fullName, put);
                C6720a c6720a = null;
                if (descriptor.getFile() != put.getFile()) {
                    throw new DescriptorValidationException(descriptor, '\"' + fullName + "\" is already defined in file \"" + put.getFile().getName() + "\".", c6720a);
                }
                int lastIndexOf = fullName.lastIndexOf(46);
                if (lastIndexOf == -1) {
                    throw new DescriptorValidationException(descriptor, '\"' + fullName + "\" is already defined.", c6720a);
                }
                throw new DescriptorValidationException(descriptor, '\"' + fullName.substring(lastIndexOf + 1) + "\" is already defined in \"" + fullName.substring(0, lastIndexOf) + "\".", c6720a);
            }
        }

        /* renamed from: c */
        public GenericDescriptor m28993c(final String fullName) {
            return m28994d(fullName, SearchFilter.ALL_SYMBOLS);
        }

        /* renamed from: d */
        public GenericDescriptor m28994d(final String fullName, final SearchFilter filter) {
            GenericDescriptor genericDescriptor = this.f37307c.get(fullName);
            if (genericDescriptor != null && (filter == SearchFilter.ALL_SYMBOLS || ((filter == SearchFilter.TYPES_ONLY && m28997g(genericDescriptor)) || (filter == SearchFilter.AGGREGATES_ONLY && m28996f(genericDescriptor))))) {
                return genericDescriptor;
            }
            Iterator<FileDescriptor> it2 = this.f37305a.iterator();
            while (it2.hasNext()) {
                GenericDescriptor genericDescriptor2 = it2.next().f37350l.f37307c.get(fullName);
                if (genericDescriptor2 != null && (filter == SearchFilter.ALL_SYMBOLS || ((filter == SearchFilter.TYPES_ONLY && m28997g(genericDescriptor2)) || (filter == SearchFilter.AGGREGATES_ONLY && m28996f(genericDescriptor2))))) {
                    return genericDescriptor2;
                }
            }
            return null;
        }

        /* renamed from: e */
        public final void m28995e(final FileDescriptor file) {
            for (FileDescriptor fileDescriptor : file.getPublicDependencies()) {
                if (this.f37305a.add(fileDescriptor)) {
                    m28995e(fileDescriptor);
                }
            }
        }

        /* renamed from: f */
        public boolean m28996f(GenericDescriptor descriptor) {
            return (descriptor instanceof Descriptor) || (descriptor instanceof EnumDescriptor) || (descriptor instanceof C6715a) || (descriptor instanceof ServiceDescriptor);
        }

        /* renamed from: g */
        public boolean m28997g(GenericDescriptor descriptor) {
            return (descriptor instanceof Descriptor) || (descriptor instanceof EnumDescriptor);
        }

        /* renamed from: h */
        public GenericDescriptor m28998h(final String name, final GenericDescriptor relativeTo, final SearchFilter filter) throws DescriptorValidationException {
            GenericDescriptor m28994d;
            String str;
            if (name.startsWith(".")) {
                str = name.substring(1);
                m28994d = m28994d(str, filter);
            } else {
                int indexOf = name.indexOf(46);
                String substring = indexOf == -1 ? name : name.substring(0, indexOf);
                StringBuilder sb = new StringBuilder(relativeTo.getFullName());
                while (true) {
                    int lastIndexOf = sb.lastIndexOf(".");
                    if (lastIndexOf == -1) {
                        m28994d = m28994d(name, filter);
                        str = name;
                        break;
                    }
                    int i = lastIndexOf + 1;
                    sb.setLength(i);
                    sb.append(substring);
                    GenericDescriptor m28994d2 = m28994d(sb.toString(), SearchFilter.AGGREGATES_ONLY);
                    if (m28994d2 != null) {
                        if (indexOf != -1) {
                            sb.setLength(i);
                            sb.append(name);
                            m28994d = m28994d(sb.toString(), filter);
                        } else {
                            m28994d = m28994d2;
                        }
                        str = sb.toString();
                    } else {
                        sb.setLength(lastIndexOf);
                    }
                }
            }
            if (m28994d != null) {
                return m28994d;
            }
            if (!this.f37306b || filter != SearchFilter.TYPES_ONLY) {
                throw new DescriptorValidationException(relativeTo, '\"' + name + "\" is not defined.", (C6720a) null);
            }
            Descriptors.f37284a.warning("The descriptor for message type \"" + name + "\" cannot be found and a placeholder is created for it");
            Descriptor descriptor = new Descriptor(str);
            this.f37305a.add(descriptor.getFile());
            return descriptor;
        }
    }

    /* loaded from: classes6.dex */
    public static class DescriptorValidationException extends Exception {
        private static final long serialVersionUID = 5750205775490483148L;
        private final String description;
        private final String name;
        private final Message proto;

        public /* synthetic */ DescriptorValidationException(FileDescriptor fileDescriptor, String str, C6720a c6720a) {
            this(fileDescriptor, str);
        }

        public String getDescription() {
            return this.description;
        }

        public Message getProblemProto() {
            return this.proto;
        }

        public String getProblemSymbolName() {
            return this.name;
        }

        public /* synthetic */ DescriptorValidationException(GenericDescriptor genericDescriptor, String str, C6720a c6720a) {
            this(genericDescriptor, str);
        }

        public /* synthetic */ DescriptorValidationException(GenericDescriptor genericDescriptor, String str, Throwable th, C6720a c6720a) {
            this(genericDescriptor, str, th);
        }

        private DescriptorValidationException(final GenericDescriptor problemDescriptor, final String description) {
            super(problemDescriptor.getFullName() + ": " + description);
            this.name = problemDescriptor.getFullName();
            this.proto = problemDescriptor.toProto();
            this.description = description;
        }

        private DescriptorValidationException(final GenericDescriptor problemDescriptor, final String description, final Throwable cause) {
            this(problemDescriptor, description);
            initCause(cause);
        }

        private DescriptorValidationException(final FileDescriptor problemDescriptor, final String description) {
            super(problemDescriptor.getName() + ": " + description);
            this.name = problemDescriptor.getName();
            this.proto = problemDescriptor.toProto();
            this.description = description;
        }
    }

    /* loaded from: classes6.dex */
    public static final class EnumDescriptor extends GenericDescriptor implements Internal.EnumLiteMap<EnumValueDescriptor> {

        /* renamed from: e */
        public final int f37311e;

        /* renamed from: f */
        public DescriptorProtos.EnumDescriptorProto f37312f;

        /* renamed from: g */
        public final String f37313g;

        /* renamed from: h */
        public final FileDescriptor f37314h;

        /* renamed from: i */
        public final Descriptor f37315i;

        /* renamed from: j */
        public final EnumValueDescriptor[] f37316j;

        /* renamed from: k */
        public final EnumValueDescriptor[] f37317k;

        /* renamed from: l */
        public final int f37318l;

        /* renamed from: m */
        public Map<Integer, WeakReference<EnumValueDescriptor>> f37319m;

        /* renamed from: n */
        public ReferenceQueue<EnumValueDescriptor> f37320n;

        /* renamed from: com.google.protobuf.Descriptors$EnumDescriptor$a */
        /* loaded from: classes6.dex */
        public static class C6716a extends WeakReference<EnumValueDescriptor> {

            /* renamed from: a */
            public final int f37321a;

            public /* synthetic */ C6716a(int i, EnumValueDescriptor enumValueDescriptor, C6720a c6720a) {
                this(i, enumValueDescriptor);
            }

            public C6716a(int number, EnumValueDescriptor descriptor) {
                super(descriptor);
                this.f37321a = number;
            }
        }

        public /* synthetic */ EnumDescriptor(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, C6720a c6720a) throws DescriptorValidationException {
            this(enumDescriptorProto, fileDescriptor, descriptor, i);
        }

        /* renamed from: c */
        public int m29001c() {
            return this.f37319m.size();
        }

        /* renamed from: d */
        public final void m29002d(final DescriptorProtos.EnumDescriptorProto proto) {
            this.f37312f = proto;
            int i = 0;
            while (true) {
                EnumValueDescriptor[] enumValueDescriptorArr = this.f37316j;
                if (i >= enumValueDescriptorArr.length) {
                    return;
                }
                enumValueDescriptorArr[i].m29005b(proto.getValue(i));
                i++;
            }
        }

        public EnumValueDescriptor findValueByName(final String name) {
            GenericDescriptor m28993c = this.f37314h.f37350l.m28993c(this.f37313g + '.' + name);
            if (m28993c instanceof EnumValueDescriptor) {
                return (EnumValueDescriptor) m28993c;
            }
            return null;
        }

        public EnumValueDescriptor findValueByNumberCreatingIfUnknown(final int number) {
            EnumValueDescriptor enumValueDescriptor;
            EnumValueDescriptor findValueByNumber = findValueByNumber(number);
            if (findValueByNumber != null) {
                return findValueByNumber;
            }
            synchronized (this) {
                if (this.f37320n == null) {
                    this.f37320n = new ReferenceQueue<>();
                    this.f37319m = new HashMap();
                } else {
                    while (true) {
                        C6716a c6716a = (C6716a) this.f37320n.poll();
                        if (c6716a == null) {
                            break;
                        }
                        this.f37319m.remove(Integer.valueOf(c6716a.f37321a));
                    }
                }
                WeakReference<EnumValueDescriptor> weakReference = this.f37319m.get(Integer.valueOf(number));
                C6720a c6720a = null;
                enumValueDescriptor = weakReference == null ? null : weakReference.get();
                if (enumValueDescriptor == null) {
                    enumValueDescriptor = new EnumValueDescriptor(this, Integer.valueOf(number), c6720a);
                    this.f37319m.put(Integer.valueOf(number), new C6716a(number, enumValueDescriptor, c6720a));
                }
            }
            return enumValueDescriptor;
        }

        public Descriptor getContainingType() {
            return this.f37315i;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.f37314h;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.f37313g;
        }

        public int getIndex() {
            return this.f37311e;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.f37312f.getName();
        }

        public DescriptorProtos.EnumOptions getOptions() {
            return this.f37312f.getOptions();
        }

        public List<EnumValueDescriptor> getValues() {
            return Collections.unmodifiableList(Arrays.asList(this.f37316j));
        }

        public boolean isClosed() {
            return getFile().getSyntax() != FileDescriptor.Syntax.PROTO3;
        }

        public boolean isReservedName(final String name) {
            Internal.m29343a(name);
            Iterator<String> it2 = this.f37312f.getReservedNameList().iterator();
            while (it2.hasNext()) {
                if (it2.next().equals(name)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isReservedNumber(final int number) {
            for (DescriptorProtos.EnumDescriptorProto.EnumReservedRange enumReservedRange : this.f37312f.getReservedRangeList()) {
                if (enumReservedRange.getStart() <= number && number <= enumReservedRange.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public EnumDescriptor(final com.google.protobuf.DescriptorProtos.EnumDescriptorProto r10, final com.google.protobuf.Descriptors.FileDescriptor r11, final com.google.protobuf.Descriptors.Descriptor r12, final int r13) throws com.google.protobuf.Descriptors.DescriptorValidationException {
            /*
                r9 = this;
                r0 = 0
                r9.<init>(r0)
                r9.f37319m = r0
                r9.f37320n = r0
                r9.f37311e = r13
                r9.f37312f = r10
                java.lang.String r13 = r10.getName()
                java.lang.String r13 = com.google.protobuf.Descriptors.m28978e(r11, r12, r13)
                r9.f37313g = r13
                r9.f37314h = r11
                r9.f37315i = r12
                int r12 = r10.getValueCount()
                if (r12 == 0) goto L89
                int r12 = r10.getValueCount()
                com.google.protobuf.Descriptors$EnumValueDescriptor[] r12 = new com.google.protobuf.Descriptors.EnumValueDescriptor[r12]
                r9.f37316j = r12
                r12 = 0
                r13 = r12
            L2a:
                int r1 = r10.getValueCount()
                if (r13 >= r1) goto L45
                com.google.protobuf.Descriptors$EnumValueDescriptor[] r7 = r9.f37316j
                com.google.protobuf.Descriptors$EnumValueDescriptor r8 = new com.google.protobuf.Descriptors$EnumValueDescriptor
                com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto r2 = r10.getValue(r13)
                r6 = 0
                r1 = r8
                r3 = r11
                r4 = r9
                r5 = r13
                r1.<init>(r2, r3, r4, r5, r6)
                r7[r13] = r8
                int r13 = r13 + 1
                goto L2a
            L45:
                com.google.protobuf.Descriptors$EnumValueDescriptor[] r13 = r9.f37316j
                java.lang.Object r13 = r13.clone()
                com.google.protobuf.Descriptors$EnumValueDescriptor[] r13 = (com.google.protobuf.Descriptors.EnumValueDescriptor[]) r13
                r9.f37317k = r13
                java.util.Comparator<com.google.protobuf.Descriptors$EnumValueDescriptor> r1 = com.google.protobuf.Descriptors.EnumValueDescriptor.f37322i
                java.util.Arrays.sort(r13, r1)
                r13 = 1
                r1 = r13
            L56:
                int r2 = r10.getValueCount()
                if (r1 >= r2) goto L75
                com.google.protobuf.Descriptors$EnumValueDescriptor[] r2 = r9.f37317k
                r3 = r2[r12]
                r2 = r2[r1]
                int r3 = r3.getNumber()
                int r4 = r2.getNumber()
                if (r3 == r4) goto L72
                com.google.protobuf.Descriptors$EnumValueDescriptor[] r3 = r9.f37317k
                int r12 = r12 + 1
                r3[r12] = r2
            L72:
                int r1 = r1 + 1
                goto L56
            L75:
                int r12 = r12 + r13
                r9.f37318l = r12
                com.google.protobuf.Descriptors$EnumValueDescriptor[] r13 = r9.f37317k
                int r10 = r10.getValueCount()
                java.util.Arrays.fill(r13, r12, r10, r0)
                com.google.protobuf.Descriptors$DescriptorPool r10 = com.google.protobuf.Descriptors.FileDescriptor.m29017a(r11)
                r10.m28992b(r9)
                return
            L89:
                com.google.protobuf.Descriptors$DescriptorValidationException r10 = new com.google.protobuf.Descriptors$DescriptorValidationException
                java.lang.String r11 = "Enums must contain at least one value."
                r10.<init>(r9, r11, r0)
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Descriptors.EnumDescriptor.<init>(com.google.protobuf.DescriptorProtos$EnumDescriptorProto, com.google.protobuf.Descriptors$FileDescriptor, com.google.protobuf.Descriptors$Descriptor, int):void");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public EnumValueDescriptor findValueByNumber(final int number) {
            return (EnumValueDescriptor) Descriptors.m28983j(this.f37317k, this.f37318l, EnumValueDescriptor.f37323j, number);
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.EnumDescriptorProto toProto() {
            return this.f37312f;
        }
    }

    /* loaded from: classes6.dex */
    public static final class EnumValueDescriptor extends GenericDescriptor implements Internal.EnumLite {

        /* renamed from: i */
        public static final Comparator<EnumValueDescriptor> f37322i = new C6717a();

        /* renamed from: j */
        public static final InterfaceC6721b<EnumValueDescriptor> f37323j = new C6718b();

        /* renamed from: e */
        public final int f37324e;

        /* renamed from: f */
        public DescriptorProtos.EnumValueDescriptorProto f37325f;

        /* renamed from: g */
        public final String f37326g;

        /* renamed from: h */
        public final EnumDescriptor f37327h;

        /* renamed from: com.google.protobuf.Descriptors$EnumValueDescriptor$a */
        /* loaded from: classes6.dex */
        public class C6717a implements Comparator<EnumValueDescriptor> {
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(EnumValueDescriptor o1, EnumValueDescriptor o2) {
                return Integer.valueOf(o1.getNumber()).compareTo(Integer.valueOf(o2.getNumber()));
            }
        }

        /* renamed from: com.google.protobuf.Descriptors$EnumValueDescriptor$b */
        /* loaded from: classes6.dex */
        public class C6718b implements InterfaceC6721b<EnumValueDescriptor> {
            @Override // com.google.protobuf.Descriptors.InterfaceC6721b
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public int mo29007a(EnumValueDescriptor enumValueDescriptor) {
                return enumValueDescriptor.getNumber();
            }
        }

        public /* synthetic */ EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, int i, C6720a c6720a) throws DescriptorValidationException {
            this(enumValueDescriptorProto, fileDescriptor, enumDescriptor, i);
        }

        /* renamed from: b */
        public final void m29005b(final DescriptorProtos.EnumValueDescriptorProto proto) {
            this.f37325f = proto;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.f37327h.f37314h;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.f37326g;
        }

        public int getIndex() {
            return this.f37324e;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.f37325f.getName();
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public int getNumber() {
            return this.f37325f.getNumber();
        }

        public DescriptorProtos.EnumValueOptions getOptions() {
            return this.f37325f.getOptions();
        }

        public EnumDescriptor getType() {
            return this.f37327h;
        }

        public String toString() {
            return this.f37325f.getName();
        }

        public /* synthetic */ EnumValueDescriptor(EnumDescriptor enumDescriptor, Integer num, C6720a c6720a) {
            this(enumDescriptor, num);
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.EnumValueDescriptorProto toProto() {
            return this.f37325f;
        }

        public EnumValueDescriptor(final DescriptorProtos.EnumValueDescriptorProto proto, final FileDescriptor file, final EnumDescriptor parent, final int index) throws DescriptorValidationException {
            super(null);
            this.f37324e = index;
            this.f37325f = proto;
            this.f37327h = parent;
            this.f37326g = parent.getFullName() + '.' + proto.getName();
            file.f37350l.m28992b(this);
        }

        public EnumValueDescriptor(final EnumDescriptor parent, final Integer number) {
            super(null);
            DescriptorProtos.EnumValueDescriptorProto build = DescriptorProtos.EnumValueDescriptorProto.newBuilder().setName("UNKNOWN_ENUM_VALUE_" + parent.getName() + "_" + number).setNumber(number.intValue()).build();
            this.f37324e = -1;
            this.f37325f = build;
            this.f37327h = parent;
            this.f37326g = parent.getFullName() + '.' + build.getName();
        }
    }

    /* loaded from: classes6.dex */
    public static final class FieldDescriptor extends GenericDescriptor implements Comparable<FieldDescriptor>, FieldSet.FieldDescriptorLite<FieldDescriptor> {

        /* renamed from: r */
        public static final InterfaceC6721b<FieldDescriptor> f37328r = new C6719a();

        /* renamed from: s */
        public static final WireFormat.FieldType[] f37329s = WireFormat.FieldType.values();

        /* renamed from: e */
        public final int f37330e;

        /* renamed from: f */
        public DescriptorProtos.FieldDescriptorProto f37331f;

        /* renamed from: g */
        public final String f37332g;

        /* renamed from: h */
        public String f37333h;

        /* renamed from: i */
        public final FileDescriptor f37334i;

        /* renamed from: j */
        public final Descriptor f37335j;

        /* renamed from: k */
        public final boolean f37336k;

        /* renamed from: l */
        public Type f37337l;

        /* renamed from: m */
        public Descriptor f37338m;

        /* renamed from: n */
        public Descriptor f37339n;

        /* renamed from: o */
        public OneofDescriptor f37340o;

        /* renamed from: p */
        public EnumDescriptor f37341p;

        /* renamed from: q */
        public Object f37342q;

        /* loaded from: classes6.dex */
        public enum JavaType {
            INT(0),
            LONG(0L),
            FLOAT(Float.valueOf(0.0f)),
            DOUBLE(Double.valueOf(0.0d)),
            BOOLEAN(Boolean.FALSE),
            STRING(""),
            BYTE_STRING(ByteString.EMPTY),
            ENUM(null),
            MESSAGE(null);

            private final Object defaultDefault;

            JavaType(final Object defaultDefault) {
                this.defaultDefault = defaultDefault;
            }
        }

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT64' uses external variables
        	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
        	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* loaded from: classes6.dex */
        public static final class Type {
            private static final /* synthetic */ Type[] $VALUES;
            public static final Type BOOL;
            public static final Type BYTES;
            public static final Type DOUBLE;
            public static final Type ENUM;
            public static final Type FIXED32;
            public static final Type FIXED64;
            public static final Type FLOAT;
            public static final Type GROUP;
            public static final Type INT32;
            public static final Type INT64;
            public static final Type MESSAGE;
            public static final Type SFIXED32;
            public static final Type SFIXED64;
            public static final Type SINT32;
            public static final Type SINT64;
            public static final Type STRING;
            public static final Type UINT32;
            public static final Type UINT64;
            private static final Type[] types;
            private final JavaType javaType;

            static {
                Type type = new Type("DOUBLE", 0, JavaType.DOUBLE);
                DOUBLE = type;
                Type type2 = new Type("FLOAT", 1, JavaType.FLOAT);
                FLOAT = type2;
                JavaType javaType = JavaType.LONG;
                Type type3 = new Type("INT64", 2, javaType);
                INT64 = type3;
                Type type4 = new Type("UINT64", 3, javaType);
                UINT64 = type4;
                JavaType javaType2 = JavaType.INT;
                Type type5 = new Type("INT32", 4, javaType2);
                INT32 = type5;
                Type type6 = new Type("FIXED64", 5, javaType);
                FIXED64 = type6;
                Type type7 = new Type("FIXED32", 6, javaType2);
                FIXED32 = type7;
                Type type8 = new Type("BOOL", 7, JavaType.BOOLEAN);
                BOOL = type8;
                Type type9 = new Type("STRING", 8, JavaType.STRING);
                STRING = type9;
                JavaType javaType3 = JavaType.MESSAGE;
                Type type10 = new Type("GROUP", 9, javaType3);
                GROUP = type10;
                Type type11 = new Type(SyncConstant.MESSAGE_DB_NAME, 10, javaType3);
                MESSAGE = type11;
                Type type12 = new Type("BYTES", 11, JavaType.BYTE_STRING);
                BYTES = type12;
                Type type13 = new Type("UINT32", 12, javaType2);
                UINT32 = type13;
                Type type14 = new Type("ENUM", 13, JavaType.ENUM);
                ENUM = type14;
                Type type15 = new Type("SFIXED32", 14, javaType2);
                SFIXED32 = type15;
                Type type16 = new Type("SFIXED64", 15, javaType);
                SFIXED64 = type16;
                Type type17 = new Type("SINT32", 16, javaType2);
                SINT32 = type17;
                Type type18 = new Type("SINT64", 17, javaType);
                SINT64 = type18;
                $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8, type9, type10, type11, type12, type13, type14, type15, type16, type17, type18};
                types = values();
            }

            private Type(String $enum$name, int $enum$ordinal, JavaType javaType) {
                this.javaType = javaType;
            }

            public static Type valueOf(String name) {
                return (Type) java.lang.Enum.valueOf(Type.class, name);
            }

            public static Type[] values() {
                return (Type[]) $VALUES.clone();
            }

            public JavaType getJavaType() {
                return this.javaType;
            }

            public DescriptorProtos.FieldDescriptorProto.Type toProto() {
                return DescriptorProtos.FieldDescriptorProto.Type.forNumber(ordinal() + 1);
            }

            public static Type valueOf(final DescriptorProtos.FieldDescriptorProto.Type type) {
                return types[type.getNumber() - 1];
            }
        }

        /* renamed from: com.google.protobuf.Descriptors$FieldDescriptor$a */
        /* loaded from: classes6.dex */
        public class C6719a implements InterfaceC6721b<FieldDescriptor> {
            @Override // com.google.protobuf.Descriptors.InterfaceC6721b
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public int mo29007a(FieldDescriptor fieldDescriptor) {
                return fieldDescriptor.getNumber();
            }
        }

        static {
            if (Type.types.length != DescriptorProtos.FieldDescriptorProto.Type.values().length) {
                throw new RuntimeException("descriptor.proto has a new declared type but Descriptors.java wasn't updated.");
            }
        }

        public /* synthetic */ FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, boolean z, C6720a c6720a) throws DescriptorValidationException {
            this(fieldDescriptorProto, fileDescriptor, descriptor, i, z);
        }

        /* renamed from: f */
        public static String m29013f(String name) {
            int length = name.length();
            StringBuilder sb = new StringBuilder(length);
            boolean z = false;
            for (int i = 0; i < length; i++) {
                char charAt = name.charAt(i);
                if (charAt == '_') {
                    z = true;
                } else if (z) {
                    if ('a' <= charAt && charAt <= 'z') {
                        charAt = (char) ((charAt - 'a') + 65);
                    }
                    sb.append(charAt);
                    z = false;
                } else {
                    sb.append(charAt);
                }
            }
            return sb.toString();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:47:0x0199. Please report as an issue. */
        /* renamed from: e */
        public final void m29014e() throws DescriptorValidationException {
            C6720a c6720a = null;
            if (this.f37331f.hasExtendee()) {
                GenericDescriptor m28998h = this.f37334i.f37350l.m28998h(this.f37331f.getExtendee(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (!(m28998h instanceof Descriptor)) {
                    throw new DescriptorValidationException(this, '\"' + this.f37331f.getExtendee() + "\" is not a message type.", c6720a);
                }
                this.f37338m = (Descriptor) m28998h;
                if (!getContainingType().isExtensionNumber(getNumber())) {
                    throw new DescriptorValidationException(this, '\"' + getContainingType().getFullName() + "\" does not declare " + getNumber() + " as an extension number.", c6720a);
                }
            }
            if (this.f37331f.hasTypeName()) {
                GenericDescriptor m28998h2 = this.f37334i.f37350l.m28998h(this.f37331f.getTypeName(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (!this.f37331f.hasType()) {
                    if (m28998h2 instanceof Descriptor) {
                        this.f37337l = Type.MESSAGE;
                    } else {
                        if (!(m28998h2 instanceof EnumDescriptor)) {
                            throw new DescriptorValidationException(this, '\"' + this.f37331f.getTypeName() + "\" is not a type.", c6720a);
                        }
                        this.f37337l = Type.ENUM;
                    }
                }
                if (getJavaType() == JavaType.MESSAGE) {
                    if (!(m28998h2 instanceof Descriptor)) {
                        throw new DescriptorValidationException(this, '\"' + this.f37331f.getTypeName() + "\" is not a message type.", c6720a);
                    }
                    this.f37339n = (Descriptor) m28998h2;
                    if (this.f37331f.hasDefaultValue()) {
                        throw new DescriptorValidationException(this, "Messages can't have default values.", c6720a);
                    }
                } else {
                    if (getJavaType() != JavaType.ENUM) {
                        throw new DescriptorValidationException(this, "Field with primitive type has type_name.", c6720a);
                    }
                    if (!(m28998h2 instanceof EnumDescriptor)) {
                        throw new DescriptorValidationException(this, '\"' + this.f37331f.getTypeName() + "\" is not an enum type.", c6720a);
                    }
                    this.f37341p = (EnumDescriptor) m28998h2;
                }
            } else if (getJavaType() == JavaType.MESSAGE || getJavaType() == JavaType.ENUM) {
                throw new DescriptorValidationException(this, "Field with message or enum type missing type_name.", c6720a);
            }
            if (this.f37331f.getOptions().getPacked() && !isPackable()) {
                throw new DescriptorValidationException(this, "[packed = true] can only be specified for repeated primitive fields.", c6720a);
            }
            if (this.f37331f.hasDefaultValue()) {
                if (isRepeated()) {
                    throw new DescriptorValidationException(this, "Repeated fields cannot have default values.", c6720a);
                }
                try {
                    switch (C6720a.f37370a[getType().ordinal()]) {
                        case 1:
                        case 2:
                        case 3:
                            this.f37342q = Integer.valueOf(TextFormat.m29506i(this.f37331f.getDefaultValue()));
                            break;
                        case 4:
                        case 5:
                            this.f37342q = Integer.valueOf(TextFormat.m29509l(this.f37331f.getDefaultValue()));
                            break;
                        case 6:
                        case 7:
                        case 8:
                            this.f37342q = Long.valueOf(TextFormat.m29507j(this.f37331f.getDefaultValue()));
                            break;
                        case 9:
                        case 10:
                            this.f37342q = Long.valueOf(TextFormat.m29510m(this.f37331f.getDefaultValue()));
                            break;
                        case 11:
                            if (!this.f37331f.getDefaultValue().equals("inf")) {
                                if (!this.f37331f.getDefaultValue().equals("-inf")) {
                                    if (!this.f37331f.getDefaultValue().equals("nan")) {
                                        this.f37342q = Float.valueOf(this.f37331f.getDefaultValue());
                                        break;
                                    } else {
                                        this.f37342q = Float.valueOf(Float.NaN);
                                        break;
                                    }
                                } else {
                                    this.f37342q = Float.valueOf(Float.NEGATIVE_INFINITY);
                                    break;
                                }
                            } else {
                                this.f37342q = Float.valueOf(Float.POSITIVE_INFINITY);
                                break;
                            }
                        case 12:
                            if (!this.f37331f.getDefaultValue().equals("inf")) {
                                if (!this.f37331f.getDefaultValue().equals("-inf")) {
                                    if (!this.f37331f.getDefaultValue().equals("nan")) {
                                        this.f37342q = Double.valueOf(this.f37331f.getDefaultValue());
                                        break;
                                    } else {
                                        this.f37342q = Double.valueOf(Double.NaN);
                                        break;
                                    }
                                } else {
                                    this.f37342q = Double.valueOf(Double.NEGATIVE_INFINITY);
                                    break;
                                }
                            } else {
                                this.f37342q = Double.valueOf(Double.POSITIVE_INFINITY);
                                break;
                            }
                        case 13:
                            this.f37342q = Boolean.valueOf(this.f37331f.getDefaultValue());
                            break;
                        case 14:
                            this.f37342q = this.f37331f.getDefaultValue();
                            break;
                        case 15:
                            try {
                                this.f37342q = TextFormat.unescapeBytes(this.f37331f.getDefaultValue());
                                break;
                            } catch (TextFormat.InvalidEscapeSequenceException e) {
                                throw new DescriptorValidationException(this, "Couldn't parse default value: " + e.getMessage(), e, c6720a);
                            }
                        case 16:
                            EnumValueDescriptor findValueByName = this.f37341p.findValueByName(this.f37331f.getDefaultValue());
                            this.f37342q = findValueByName;
                            if (findValueByName == null) {
                                throw new DescriptorValidationException(this, "Unknown enum default value: \"" + this.f37331f.getDefaultValue() + '\"', c6720a);
                            }
                            break;
                        case 17:
                        case 18:
                            throw new DescriptorValidationException(this, "Message type had default value.", c6720a);
                    }
                } catch (NumberFormatException e2) {
                    throw new DescriptorValidationException(this, "Could not parse default value: \"" + this.f37331f.getDefaultValue() + '\"', e2, c6720a);
                }
            } else if (isRepeated()) {
                this.f37342q = Collections.emptyList();
            } else {
                int i = C6720a.f37371b[getJavaType().ordinal()];
                if (i == 1) {
                    this.f37342q = this.f37341p.getValues().get(0);
                } else if (i != 2) {
                    this.f37342q = getJavaType().defaultDefault;
                } else {
                    this.f37342q = null;
                }
            }
            Descriptor descriptor = this.f37338m;
            if (descriptor == null || !descriptor.getOptions().getMessageSetWireFormat()) {
                return;
            }
            if (!isExtension()) {
                throw new DescriptorValidationException(this, "MessageSets cannot have fields, only extensions.", c6720a);
            }
            if (!isOptional() || getType() != Type.MESSAGE) {
                throw new DescriptorValidationException(this, "Extensions of MessageSets must be optional messages.", c6720a);
            }
        }

        /* renamed from: g */
        public final void m29015g(final DescriptorProtos.FieldDescriptorProto proto) {
            this.f37331f = proto;
        }

        public OneofDescriptor getContainingOneof() {
            return this.f37340o;
        }

        public Descriptor getContainingType() {
            return this.f37338m;
        }

        public Object getDefaultValue() {
            if (getJavaType() != JavaType.MESSAGE) {
                return this.f37342q;
            }
            throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
        }

        public Descriptor getExtensionScope() {
            if (isExtension()) {
                return this.f37335j;
            }
            throw new UnsupportedOperationException(String.format("This field is not an extension. (%s)", this.f37332g));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.f37334i;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.f37332g;
        }

        public int getIndex() {
            return this.f37330e;
        }

        public JavaType getJavaType() {
            return this.f37337l.getJavaType();
        }

        public String getJsonName() {
            String str = this.f37333h;
            if (str != null) {
                return str;
            }
            if (this.f37331f.hasJsonName()) {
                String jsonName = this.f37331f.getJsonName();
                this.f37333h = jsonName;
                return jsonName;
            }
            String m29013f = m29013f(this.f37331f.getName());
            this.f37333h = m29013f;
            return m29013f;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public WireFormat.JavaType getLiteJavaType() {
            return getLiteType().getJavaType();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public WireFormat.FieldType getLiteType() {
            return f37329s[this.f37337l.ordinal()];
        }

        public Descriptor getMessageType() {
            if (getJavaType() == JavaType.MESSAGE) {
                return this.f37339n;
            }
            throw new UnsupportedOperationException(String.format("This field is not of message type. (%s)", this.f37332g));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.f37331f.getName();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public int getNumber() {
            return this.f37331f.getNumber();
        }

        public DescriptorProtos.FieldOptions getOptions() {
            return this.f37331f.getOptions();
        }

        public OneofDescriptor getRealContainingOneof() {
            OneofDescriptor oneofDescriptor = this.f37340o;
            if (oneofDescriptor == null || oneofDescriptor.isSynthetic()) {
                return null;
            }
            return this.f37340o;
        }

        public Type getType() {
            return this.f37337l;
        }

        public boolean hasDefaultValue() {
            return this.f37331f.hasDefaultValue();
        }

        public boolean hasOptionalKeyword() {
            return this.f37336k || (this.f37334i.getSyntax() == FileDescriptor.Syntax.PROTO2 && isOptional() && getContainingOneof() == null);
        }

        public boolean hasPresence() {
            if (isRepeated()) {
                return false;
            }
            return getType() == Type.MESSAGE || getType() == Type.GROUP || getContainingOneof() != null || this.f37334i.getSyntax() == FileDescriptor.Syntax.PROTO2;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public MessageLite.Builder internalMergeFrom(MessageLite.Builder to, MessageLite from) {
            return ((Message.Builder) to).mergeFrom((Message) from);
        }

        public boolean isExtension() {
            return this.f37331f.hasExtendee();
        }

        public boolean isMapField() {
            return getType() == Type.MESSAGE && isRepeated() && getMessageType().getOptions().getMapEntry();
        }

        public boolean isOptional() {
            return this.f37331f.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_OPTIONAL;
        }

        public boolean isPackable() {
            return isRepeated() && getLiteType().isPackable();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isPacked() {
            if (isPackable()) {
                return getFile().getSyntax() == FileDescriptor.Syntax.PROTO2 ? getOptions().getPacked() : !getOptions().hasPacked() || getOptions().getPacked();
            }
            return false;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isRepeated() {
            return this.f37331f.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REPEATED;
        }

        public boolean isRequired() {
            return this.f37331f.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REQUIRED;
        }

        public boolean legacyEnumFieldTreatedAsClosed() {
            return getType() == Type.ENUM && getFile().getSyntax() == FileDescriptor.Syntax.PROTO2;
        }

        public boolean needsUtf8Check() {
            if (this.f37337l != Type.STRING) {
                return false;
            }
            if (getContainingType().getOptions().getMapEntry() || getFile().getSyntax() == FileDescriptor.Syntax.PROTO3) {
                return true;
            }
            return getFile().getOptions().getJavaStringCheckUtf8();
        }

        public String toString() {
            return getFullName();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public FieldDescriptor(final com.google.protobuf.DescriptorProtos.FieldDescriptorProto r2, final com.google.protobuf.Descriptors.FileDescriptor r3, final com.google.protobuf.Descriptors.Descriptor r4, final int r5, final boolean r6) throws com.google.protobuf.Descriptors.DescriptorValidationException {
            /*
                r1 = this;
                r0 = 0
                r1.<init>(r0)
                r1.f37330e = r5
                r1.f37331f = r2
                java.lang.String r5 = r2.getName()
                java.lang.String r5 = com.google.protobuf.Descriptors.m28978e(r3, r4, r5)
                r1.f37332g = r5
                r1.f37334i = r3
                boolean r5 = r2.hasType()
                if (r5 == 0) goto L24
                com.google.protobuf.DescriptorProtos$FieldDescriptorProto$Type r5 = r2.getType()
                com.google.protobuf.Descriptors$FieldDescriptor$Type r5 = com.google.protobuf.Descriptors.FieldDescriptor.Type.valueOf(r5)
                r1.f37337l = r5
            L24:
                boolean r5 = r2.getProto3Optional()
                r1.f37336k = r5
                int r5 = r1.getNumber()
                if (r5 <= 0) goto Lbf
                if (r6 == 0) goto L5a
                boolean r5 = r2.hasExtendee()
                if (r5 == 0) goto L52
                r1.f37338m = r0
                if (r4 == 0) goto L3f
                r1.f37335j = r4
                goto L41
            L3f:
                r1.f37335j = r0
            L41:
                boolean r2 = r2.hasOneofIndex()
                if (r2 != 0) goto L4a
                r1.f37340o = r0
                goto Laf
            L4a:
                com.google.protobuf.Descriptors$DescriptorValidationException r2 = new com.google.protobuf.Descriptors$DescriptorValidationException
                java.lang.String r3 = "FieldDescriptorProto.oneof_index set for extension field."
                r2.<init>(r1, r3, r0)
                throw r2
            L52:
                com.google.protobuf.Descriptors$DescriptorValidationException r2 = new com.google.protobuf.Descriptors$DescriptorValidationException
                java.lang.String r3 = "FieldDescriptorProto.extendee not set for extension field."
                r2.<init>(r1, r3, r0)
                throw r2
            L5a:
                boolean r5 = r2.hasExtendee()
                if (r5 != 0) goto Lb7
                r1.f37338m = r4
                boolean r5 = r2.hasOneofIndex()
                if (r5 == 0) goto Lab
                int r5 = r2.getOneofIndex()
                if (r5 < 0) goto L90
                int r5 = r2.getOneofIndex()
                com.google.protobuf.DescriptorProtos$DescriptorProto r6 = r4.toProto()
                int r6 = r6.getOneofDeclCount()
                if (r5 >= r6) goto L90
                java.util.List r4 = r4.getOneofs()
                int r2 = r2.getOneofIndex()
                java.lang.Object r2 = r4.get(r2)
                com.google.protobuf.Descriptors$OneofDescriptor r2 = (com.google.protobuf.Descriptors.OneofDescriptor) r2
                r1.f37340o = r2
                com.google.protobuf.Descriptors.OneofDescriptor.m29029d(r2)
                goto Lad
            L90:
                com.google.protobuf.Descriptors$DescriptorValidationException r2 = new com.google.protobuf.Descriptors$DescriptorValidationException
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                java.lang.String r5 = "FieldDescriptorProto.oneof_index is out of range for type "
                r3.append(r5)
                java.lang.String r4 = r4.getName()
                r3.append(r4)
                java.lang.String r3 = r3.toString()
                r2.<init>(r1, r3, r0)
                throw r2
            Lab:
                r1.f37340o = r0
            Lad:
                r1.f37335j = r0
            Laf:
                com.google.protobuf.Descriptors$DescriptorPool r2 = com.google.protobuf.Descriptors.FileDescriptor.m29017a(r3)
                r2.m28992b(r1)
                return
            Lb7:
                com.google.protobuf.Descriptors$DescriptorValidationException r2 = new com.google.protobuf.Descriptors$DescriptorValidationException
                java.lang.String r3 = "FieldDescriptorProto.extendee set for non-extension field."
                r2.<init>(r1, r3, r0)
                throw r2
            Lbf:
                com.google.protobuf.Descriptors$DescriptorValidationException r2 = new com.google.protobuf.Descriptors$DescriptorValidationException
                java.lang.String r3 = "Field numbers must be positive integers."
                r2.<init>(r1, r3, r0)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Descriptors.FieldDescriptor.<init>(com.google.protobuf.DescriptorProtos$FieldDescriptorProto, com.google.protobuf.Descriptors$FileDescriptor, com.google.protobuf.Descriptors$Descriptor, int, boolean):void");
        }

        @Override // java.lang.Comparable
        public int compareTo(final FieldDescriptor other) {
            if (other.f37338m == this.f37338m) {
                return getNumber() - other.getNumber();
            }
            throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public EnumDescriptor getEnumType() {
            if (getJavaType() == JavaType.ENUM) {
                return this.f37341p;
            }
            throw new UnsupportedOperationException(String.format("This field is not of enum type. (%s)", this.f37332g));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.FieldDescriptorProto toProto() {
            return this.f37331f;
        }
    }

    /* loaded from: classes6.dex */
    public static final class FileDescriptor extends GenericDescriptor {

        /* renamed from: e */
        public DescriptorProtos.FileDescriptorProto f37343e;

        /* renamed from: f */
        public final Descriptor[] f37344f;

        /* renamed from: g */
        public final EnumDescriptor[] f37345g;

        /* renamed from: h */
        public final ServiceDescriptor[] f37346h;

        /* renamed from: i */
        public final FieldDescriptor[] f37347i;

        /* renamed from: j */
        public final FileDescriptor[] f37348j;

        /* renamed from: k */
        public final FileDescriptor[] f37349k;

        /* renamed from: l */
        public final DescriptorPool f37350l;

        @Deprecated
        /* loaded from: classes6.dex */
        public interface InternalDescriptorAssigner {
            ExtensionRegistry assignDescriptors(FileDescriptor root);
        }

        @Deprecated
        /* loaded from: classes6.dex */
        public enum Syntax {
            UNKNOWN("unknown"),
            PROTO2("proto2"),
            PROTO3("proto3");

            private final String name;

            Syntax(String name) {
                this.name = name;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public FileDescriptor(final com.google.protobuf.DescriptorProtos.FileDescriptorProto r12, final com.google.protobuf.Descriptors.FileDescriptor[] r13, final com.google.protobuf.Descriptors.DescriptorPool r14, boolean r15) throws com.google.protobuf.Descriptors.DescriptorValidationException {
            /*
                Method dump skipped, instructions count: 316
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Descriptors.FileDescriptor.<init>(com.google.protobuf.DescriptorProtos$FileDescriptorProto, com.google.protobuf.Descriptors$FileDescriptor[], com.google.protobuf.Descriptors$DescriptorPool, boolean):void");
        }

        public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto proto, FileDescriptor[] dependencies) throws DescriptorValidationException {
            return buildFrom(proto, dependencies, false);
        }

        /* renamed from: c */
        public static FileDescriptor[] m29018c(final Class<?> descriptorOuterClass, final String[] dependencyClassNames, final String[] dependencyFileNames) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < dependencyClassNames.length; i++) {
                try {
                    arrayList.add((FileDescriptor) descriptorOuterClass.getClassLoader().loadClass(dependencyClassNames[i]).getField("descriptor").get(null));
                } catch (Exception unused) {
                    Descriptors.f37284a.warning("Descriptors for \"" + dependencyFileNames[i] + "\" can not be found.");
                }
            }
            return (FileDescriptor[]) arrayList.toArray(new FileDescriptor[0]);
        }

        /* renamed from: d */
        public static byte[] m29019d(final String[] strings) {
            if (strings.length == 1) {
                return strings[0].getBytes(Internal.f37668c);
            }
            StringBuilder sb = new StringBuilder();
            for (String str : strings) {
                sb.append(str);
            }
            return sb.toString().getBytes(Internal.f37668c);
        }

        @Deprecated
        public static void internalBuildGeneratedFileFrom(final String[] descriptorDataParts, final FileDescriptor[] dependencies, final InternalDescriptorAssigner descriptorAssigner) {
            byte[] m29019d = m29019d(descriptorDataParts);
            try {
                DescriptorProtos.FileDescriptorProto parseFrom = DescriptorProtos.FileDescriptorProto.parseFrom(m29019d);
                try {
                    FileDescriptor buildFrom = buildFrom(parseFrom, dependencies, true);
                    ExtensionRegistry assignDescriptors = descriptorAssigner.assignDescriptors(buildFrom);
                    if (assignDescriptors != null) {
                        try {
                            buildFrom.m29021e(DescriptorProtos.FileDescriptorProto.parseFrom(m29019d, assignDescriptors));
                        } catch (InvalidProtocolBufferException e) {
                            throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e);
                        }
                    }
                } catch (DescriptorValidationException e2) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + parseFrom.getName() + "\".", e2);
                }
            } catch (InvalidProtocolBufferException e3) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e3);
            }
        }

        public static void internalUpdateFileDescriptor(FileDescriptor descriptor, ExtensionRegistry registry) {
            try {
                descriptor.m29021e(DescriptorProtos.FileDescriptorProto.parseFrom(descriptor.f37343e.toByteString(), registry));
            } catch (InvalidProtocolBufferException e) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e);
            }
        }

        /* renamed from: b */
        public final void m29020b() throws DescriptorValidationException {
            for (Descriptor descriptor : this.f37344f) {
                descriptor.m28987c();
            }
            for (ServiceDescriptor serviceDescriptor : this.f37346h) {
                serviceDescriptor.m29034c();
            }
            for (FieldDescriptor fieldDescriptor : this.f37347i) {
                fieldDescriptor.m29014e();
            }
        }

        public void copyHeadingTo(DescriptorProtos.FileDescriptorProto.Builder protoBuilder) {
            protoBuilder.setName(getName()).setSyntax(getSyntax().name);
            if (!getPackage().isEmpty()) {
                protoBuilder.setPackage(getPackage());
            }
            if (getOptions().equals(DescriptorProtos.FileOptions.getDefaultInstance())) {
                return;
            }
            protoBuilder.setOptions(getOptions());
        }

        /* renamed from: e */
        public final void m29021e(final DescriptorProtos.FileDescriptorProto proto) {
            this.f37343e = proto;
            int i = 0;
            int i2 = 0;
            while (true) {
                Descriptor[] descriptorArr = this.f37344f;
                if (i2 >= descriptorArr.length) {
                    break;
                }
                descriptorArr[i2].m28988d(proto.getMessageType(i2));
                i2++;
            }
            int i3 = 0;
            while (true) {
                EnumDescriptor[] enumDescriptorArr = this.f37345g;
                if (i3 >= enumDescriptorArr.length) {
                    break;
                }
                enumDescriptorArr[i3].m29002d(proto.getEnumType(i3));
                i3++;
            }
            int i4 = 0;
            while (true) {
                ServiceDescriptor[] serviceDescriptorArr = this.f37346h;
                if (i4 >= serviceDescriptorArr.length) {
                    break;
                }
                serviceDescriptorArr[i4].m29035d(proto.getService(i4));
                i4++;
            }
            while (true) {
                FieldDescriptor[] fieldDescriptorArr = this.f37347i;
                if (i >= fieldDescriptorArr.length) {
                    return;
                }
                fieldDescriptorArr[i].m29015g(proto.getExtension(i));
                i++;
            }
        }

        public EnumDescriptor findEnumTypeByName(String name) {
            if (name.indexOf(46) != -1) {
                return null;
            }
            String str = getPackage();
            if (!str.isEmpty()) {
                name = str + '.' + name;
            }
            GenericDescriptor m28993c = this.f37350l.m28993c(name);
            if ((m28993c instanceof EnumDescriptor) && m28993c.getFile() == this) {
                return (EnumDescriptor) m28993c;
            }
            return null;
        }

        public FieldDescriptor findExtensionByName(String name) {
            if (name.indexOf(46) != -1) {
                return null;
            }
            String str = getPackage();
            if (!str.isEmpty()) {
                name = str + '.' + name;
            }
            GenericDescriptor m28993c = this.f37350l.m28993c(name);
            if ((m28993c instanceof FieldDescriptor) && m28993c.getFile() == this) {
                return (FieldDescriptor) m28993c;
            }
            return null;
        }

        public Descriptor findMessageTypeByName(String name) {
            if (name.indexOf(46) != -1) {
                return null;
            }
            String str = getPackage();
            if (!str.isEmpty()) {
                name = str + '.' + name;
            }
            GenericDescriptor m28993c = this.f37350l.m28993c(name);
            if ((m28993c instanceof Descriptor) && m28993c.getFile() == this) {
                return (Descriptor) m28993c;
            }
            return null;
        }

        public ServiceDescriptor findServiceByName(String name) {
            if (name.indexOf(46) != -1) {
                return null;
            }
            String str = getPackage();
            if (!str.isEmpty()) {
                name = str + '.' + name;
            }
            GenericDescriptor m28993c = this.f37350l.m28993c(name);
            if ((m28993c instanceof ServiceDescriptor) && m28993c.getFile() == this) {
                return (ServiceDescriptor) m28993c;
            }
            return null;
        }

        public List<FileDescriptor> getDependencies() {
            return Collections.unmodifiableList(Arrays.asList(this.f37348j));
        }

        public List<EnumDescriptor> getEnumTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.f37345g));
        }

        public List<FieldDescriptor> getExtensions() {
            return Collections.unmodifiableList(Arrays.asList(this.f37347i));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.f37343e.getName();
        }

        public List<Descriptor> getMessageTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.f37344f));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.f37343e.getName();
        }

        public DescriptorProtos.FileOptions getOptions() {
            return this.f37343e.getOptions();
        }

        public String getPackage() {
            return this.f37343e.getPackage();
        }

        public List<FileDescriptor> getPublicDependencies() {
            return Collections.unmodifiableList(Arrays.asList(this.f37349k));
        }

        public List<ServiceDescriptor> getServices() {
            return Collections.unmodifiableList(Arrays.asList(this.f37346h));
        }

        @Deprecated
        public Syntax getSyntax() {
            Syntax syntax = Syntax.PROTO3;
            return syntax.name.equals(this.f37343e.getSyntax()) ? syntax : Syntax.PROTO2;
        }

        public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto proto, FileDescriptor[] dependencies, boolean allowUnknownDependencies) throws DescriptorValidationException {
            FileDescriptor fileDescriptor = new FileDescriptor(proto, dependencies, new DescriptorPool(dependencies, allowUnknownDependencies), allowUnknownDependencies);
            fileDescriptor.m29020b();
            return fileDescriptor;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.FileDescriptorProto toProto() {
            return this.f37343e;
        }

        public static FileDescriptor internalBuildGeneratedFileFrom(final String[] descriptorDataParts, final FileDescriptor[] dependencies) {
            try {
                DescriptorProtos.FileDescriptorProto parseFrom = DescriptorProtos.FileDescriptorProto.parseFrom(m29019d(descriptorDataParts));
                try {
                    return buildFrom(parseFrom, dependencies, true);
                } catch (DescriptorValidationException e) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + parseFrom.getName() + "\".", e);
                }
            } catch (InvalidProtocolBufferException e2) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e2);
            }
        }

        @Deprecated
        public static void internalBuildGeneratedFileFrom(final String[] descriptorDataParts, final Class<?> descriptorOuterClass, final String[] dependencyClassNames, final String[] dependencyFileNames, final InternalDescriptorAssigner descriptorAssigner) {
            internalBuildGeneratedFileFrom(descriptorDataParts, m29018c(descriptorOuterClass, dependencyClassNames, dependencyFileNames), descriptorAssigner);
        }

        public static FileDescriptor internalBuildGeneratedFileFrom(final String[] descriptorDataParts, final Class<?> descriptorOuterClass, final String[] dependencyClassNames, final String[] dependencyFileNames) {
            return internalBuildGeneratedFileFrom(descriptorDataParts, m29018c(descriptorOuterClass, dependencyClassNames, dependencyFileNames));
        }

        public FileDescriptor(String packageName, Descriptor message) throws DescriptorValidationException {
            super(null);
            DescriptorPool descriptorPool = new DescriptorPool(new FileDescriptor[0], true);
            this.f37350l = descriptorPool;
            this.f37343e = DescriptorProtos.FileDescriptorProto.newBuilder().setName(message.getFullName() + ".placeholder.proto").setPackage(packageName).addMessageType(message.toProto()).build();
            this.f37348j = new FileDescriptor[0];
            this.f37349k = new FileDescriptor[0];
            this.f37344f = new Descriptor[]{message};
            this.f37345g = Descriptors.f37288e;
            this.f37346h = Descriptors.f37289f;
            this.f37347i = Descriptors.f37287d;
            descriptorPool.m28991a(packageName, this);
            descriptorPool.m28992b(message);
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class GenericDescriptor {
        public /* synthetic */ GenericDescriptor(C6720a c6720a) {
            this();
        }

        public abstract FileDescriptor getFile();

        public abstract String getFullName();

        public abstract String getName();

        public abstract Message toProto();

        public GenericDescriptor() {
        }
    }

    /* loaded from: classes6.dex */
    public static final class MethodDescriptor extends GenericDescriptor {

        /* renamed from: e */
        public final int f37351e;

        /* renamed from: f */
        public DescriptorProtos.MethodDescriptorProto f37352f;

        /* renamed from: g */
        public final String f37353g;

        /* renamed from: h */
        public final FileDescriptor f37354h;

        /* renamed from: i */
        public final ServiceDescriptor f37355i;

        /* renamed from: j */
        public Descriptor f37356j;

        /* renamed from: k */
        public Descriptor f37357k;

        public /* synthetic */ MethodDescriptor(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, ServiceDescriptor serviceDescriptor, int i, C6720a c6720a) throws DescriptorValidationException {
            this(methodDescriptorProto, fileDescriptor, serviceDescriptor, i);
        }

        /* renamed from: c */
        public final void m29024c() throws DescriptorValidationException {
            DescriptorPool descriptorPool = getFile().f37350l;
            String inputType = this.f37352f.getInputType();
            DescriptorPool.SearchFilter searchFilter = DescriptorPool.SearchFilter.TYPES_ONLY;
            GenericDescriptor m28998h = descriptorPool.m28998h(inputType, this, searchFilter);
            C6720a c6720a = null;
            if (!(m28998h instanceof Descriptor)) {
                throw new DescriptorValidationException(this, '\"' + this.f37352f.getInputType() + "\" is not a message type.", c6720a);
            }
            this.f37356j = (Descriptor) m28998h;
            GenericDescriptor m28998h2 = getFile().f37350l.m28998h(this.f37352f.getOutputType(), this, searchFilter);
            if (m28998h2 instanceof Descriptor) {
                this.f37357k = (Descriptor) m28998h2;
                return;
            }
            throw new DescriptorValidationException(this, '\"' + this.f37352f.getOutputType() + "\" is not a message type.", c6720a);
        }

        /* renamed from: d */
        public final void m29025d(final DescriptorProtos.MethodDescriptorProto proto) {
            this.f37352f = proto;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.f37354h;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.f37353g;
        }

        public int getIndex() {
            return this.f37351e;
        }

        public Descriptor getInputType() {
            return this.f37356j;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.f37352f.getName();
        }

        public DescriptorProtos.MethodOptions getOptions() {
            return this.f37352f.getOptions();
        }

        public Descriptor getOutputType() {
            return this.f37357k;
        }

        public ServiceDescriptor getService() {
            return this.f37355i;
        }

        public boolean isClientStreaming() {
            return this.f37352f.getClientStreaming();
        }

        public boolean isServerStreaming() {
            return this.f37352f.getServerStreaming();
        }

        public MethodDescriptor(final DescriptorProtos.MethodDescriptorProto proto, final FileDescriptor file, final ServiceDescriptor parent, final int index) throws DescriptorValidationException {
            super(null);
            this.f37351e = index;
            this.f37352f = proto;
            this.f37354h = file;
            this.f37355i = parent;
            this.f37353g = parent.getFullName() + '.' + proto.getName();
            file.f37350l.m28992b(this);
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.MethodDescriptorProto toProto() {
            return this.f37352f;
        }
    }

    /* loaded from: classes6.dex */
    public static final class OneofDescriptor extends GenericDescriptor {

        /* renamed from: e */
        public final int f37358e;

        /* renamed from: f */
        public DescriptorProtos.OneofDescriptorProto f37359f;

        /* renamed from: g */
        public final String f37360g;

        /* renamed from: h */
        public final FileDescriptor f37361h;

        /* renamed from: i */
        public Descriptor f37362i;

        /* renamed from: j */
        public int f37363j;

        /* renamed from: k */
        public FieldDescriptor[] f37364k;

        public /* synthetic */ OneofDescriptor(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, C6720a c6720a) {
            this(oneofDescriptorProto, fileDescriptor, descriptor, i);
        }

        /* renamed from: d */
        public static /* synthetic */ int m29029d(OneofDescriptor oneofDescriptor) {
            int i = oneofDescriptor.f37363j;
            oneofDescriptor.f37363j = i + 1;
            return i;
        }

        /* renamed from: f */
        public final void m29031f(final DescriptorProtos.OneofDescriptorProto proto) {
            this.f37359f = proto;
        }

        public Descriptor getContainingType() {
            return this.f37362i;
        }

        public FieldDescriptor getField(int index) {
            return this.f37364k[index];
        }

        public int getFieldCount() {
            return this.f37363j;
        }

        public List<FieldDescriptor> getFields() {
            return Collections.unmodifiableList(Arrays.asList(this.f37364k));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.f37361h;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.f37360g;
        }

        public int getIndex() {
            return this.f37358e;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.f37359f.getName();
        }

        public DescriptorProtos.OneofOptions getOptions() {
            return this.f37359f.getOptions();
        }

        @Deprecated
        public boolean isSynthetic() {
            FieldDescriptor[] fieldDescriptorArr = this.f37364k;
            return fieldDescriptorArr.length == 1 && fieldDescriptorArr[0].f37336k;
        }

        public OneofDescriptor(final DescriptorProtos.OneofDescriptorProto proto, final FileDescriptor file, final Descriptor parent, final int index) {
            super(null);
            this.f37359f = proto;
            this.f37360g = Descriptors.m28984k(file, parent, proto.getName());
            this.f37361h = file;
            this.f37358e = index;
            this.f37362i = parent;
            this.f37363j = 0;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.OneofDescriptorProto toProto() {
            return this.f37359f;
        }
    }

    /* loaded from: classes6.dex */
    public static final class ServiceDescriptor extends GenericDescriptor {

        /* renamed from: e */
        public final int f37365e;

        /* renamed from: f */
        public DescriptorProtos.ServiceDescriptorProto f37366f;

        /* renamed from: g */
        public final String f37367g;

        /* renamed from: h */
        public final FileDescriptor f37368h;

        /* renamed from: i */
        public MethodDescriptor[] f37369i;

        public /* synthetic */ ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i, C6720a c6720a) throws DescriptorValidationException {
            this(serviceDescriptorProto, fileDescriptor, i);
        }

        /* renamed from: c */
        public final void m29034c() throws DescriptorValidationException {
            for (MethodDescriptor methodDescriptor : this.f37369i) {
                methodDescriptor.m29024c();
            }
        }

        /* renamed from: d */
        public final void m29035d(final DescriptorProtos.ServiceDescriptorProto proto) {
            this.f37366f = proto;
            int i = 0;
            while (true) {
                MethodDescriptor[] methodDescriptorArr = this.f37369i;
                if (i >= methodDescriptorArr.length) {
                    return;
                }
                methodDescriptorArr[i].m29025d(proto.getMethod(i));
                i++;
            }
        }

        public MethodDescriptor findMethodByName(final String name) {
            GenericDescriptor m28993c = this.f37368h.f37350l.m28993c(this.f37367g + '.' + name);
            if (m28993c instanceof MethodDescriptor) {
                return (MethodDescriptor) m28993c;
            }
            return null;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.f37368h;
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.f37367g;
        }

        public int getIndex() {
            return this.f37365e;
        }

        public List<MethodDescriptor> getMethods() {
            return Collections.unmodifiableList(Arrays.asList(this.f37369i));
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.f37366f.getName();
        }

        public DescriptorProtos.ServiceOptions getOptions() {
            return this.f37366f.getOptions();
        }

        public ServiceDescriptor(final DescriptorProtos.ServiceDescriptorProto proto, final FileDescriptor file, final int index) throws DescriptorValidationException {
            super(null);
            this.f37365e = index;
            this.f37366f = proto;
            this.f37367g = Descriptors.m28984k(file, null, proto.getName());
            this.f37368h = file;
            this.f37369i = new MethodDescriptor[proto.getMethodCount()];
            for (int i = 0; i < proto.getMethodCount(); i++) {
                this.f37369i[i] = new MethodDescriptor(proto.getMethod(i), file, this, i, null);
            }
            file.f37350l.m28992b(this);
        }

        @Override // com.google.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.ServiceDescriptorProto toProto() {
            return this.f37366f;
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6720a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37370a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f37371b;

        static {
            int[] iArr = new int[FieldDescriptor.JavaType.values().length];
            f37371b = iArr;
            try {
                iArr[FieldDescriptor.JavaType.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37371b[FieldDescriptor.JavaType.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[FieldDescriptor.Type.values().length];
            f37370a = iArr2;
            try {
                iArr2[FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37370a[FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37370a[FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37370a[FieldDescriptor.Type.UINT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f37370a[FieldDescriptor.Type.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f37370a[FieldDescriptor.Type.INT64.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f37370a[FieldDescriptor.Type.SINT64.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f37370a[FieldDescriptor.Type.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f37370a[FieldDescriptor.Type.UINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f37370a[FieldDescriptor.Type.FIXED64.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f37370a[FieldDescriptor.Type.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f37370a[FieldDescriptor.Type.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f37370a[FieldDescriptor.Type.BOOL.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f37370a[FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f37370a[FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f37370a[FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f37370a[FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f37370a[FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$b */
    /* loaded from: classes6.dex */
    public interface InterfaceC6721b<T> {
        /* renamed from: a */
        int mo29007a(T t);
    }

    /* renamed from: j */
    public static <T> T m28983j(T[] array, int size, InterfaceC6721b<T> getter, int number) {
        int i = size - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) / 2;
            T t = array[i3];
            int mo29007a = getter.mo29007a(t);
            if (number < mo29007a) {
                i = i3 - 1;
            } else {
                if (number <= mo29007a) {
                    return t;
                }
                i2 = i3 + 1;
            }
        }
        return null;
    }

    /* renamed from: k */
    public static String m28984k(final FileDescriptor file, final Descriptor parent, final String name) {
        if (parent != null) {
            return parent.getFullName() + '.' + name;
        }
        String str = file.getPackage();
        if (str.isEmpty()) {
            return name;
        }
        return str + '.' + name;
    }
}
