package org.apache.commons.compress.harmony.unpack200;

import com.couchbase.lite.internal.BaseTLSIdentity;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.compress.harmony.pack200.BHSDCodec;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPClass;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPDouble;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFieldRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFloat;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInteger;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInterfaceMethodRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPLong;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPMethodRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPNameAndType;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPString;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPUTF8;
import org.apache.commons.compress.harmony.unpack200.bytecode.NewAttribute;

/* loaded from: classes12.dex */
public class NewAttributeBands extends BandSet {

    /* renamed from: a */
    public final AttributeLayout f107007a;
    protected List<InterfaceC18899b> attributeLayoutElements;

    /* renamed from: b */
    public int f107008b;

    /* loaded from: classes12.dex */
    public class Call extends AbstractC18900c {

        /* renamed from: b */
        public final int f107009b;

        /* renamed from: c */
        public Callable f107010c;

        public Call(int i) {
            super();
            this.f107009b = i;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void addToAttribute(int i, NewAttribute newAttribute) {
            this.f107010c.addNextToAttribute(newAttribute);
        }

        public Callable getCallable() {
            return this.f107010c;
        }

        public int getCallableIndex() {
            return this.f107009b;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void readBands(InputStream inputStream, int i) {
            if (this.f107009b > 0) {
                this.f107010c.addCount(i);
            }
        }

        public void setCallable(Callable callable) {
            this.f107010c = callable;
            if (this.f107009b < 1) {
                callable.setBackwardsCallable();
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class Callable implements InterfaceC18899b {

        /* renamed from: a */
        public final List<AbstractC18900c> f107012a;

        /* renamed from: b */
        public boolean f107013b;

        /* renamed from: c */
        public boolean f107014c;

        /* renamed from: d */
        public int f107015d;

        /* renamed from: e */
        public int f107016e;

        public Callable(List<AbstractC18900c> list) {
            this.f107012a = list;
        }

        public void addCount(int i) {
            this.f107015d += i;
        }

        public void addNextToAttribute(NewAttribute newAttribute) {
            Iterator<AbstractC18900c> it2 = this.f107012a.iterator();
            while (it2.hasNext()) {
                it2.next().addToAttribute(this.f107016e, newAttribute);
            }
            this.f107016e++;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void addToAttribute(int i, NewAttribute newAttribute) {
            if (this.f107014c) {
                Iterator<AbstractC18900c> it2 = this.f107012a.iterator();
                while (it2.hasNext()) {
                    it2.next().addToAttribute(this.f107016e, newAttribute);
                }
                this.f107016e++;
            }
        }

        public List<AbstractC18900c> getBody() {
            return this.f107012a;
        }

        public boolean isBackwardsCallable() {
            return this.f107013b;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void readBands(InputStream inputStream, int i) throws IOException, Pack200Exception {
            int i2 = this.f107014c ? i + this.f107015d : this.f107015d;
            Iterator<AbstractC18900c> it2 = this.f107012a.iterator();
            while (it2.hasNext()) {
                it2.next().readBands(inputStream, i2);
            }
        }

        public void setBackwardsCallable() {
            this.f107013b = true;
        }

        public void setFirstCallable(boolean z) {
            this.f107014c = z;
        }
    }

    /* loaded from: classes12.dex */
    public class Integral extends AbstractC18900c {

        /* renamed from: b */
        public final String f107017b;

        /* renamed from: c */
        public int[] f107018c;

        public Integral(String str) {
            super();
            this.f107017b = str;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void addToAttribute(int i, NewAttribute newAttribute) {
            int i2 = this.f107018c[i];
            if (this.f107017b.equals("B") || this.f107017b.equals("FB")) {
                newAttribute.addInteger(1, i2);
                return;
            }
            if (this.f107017b.equals("SB")) {
                newAttribute.addInteger(1, (byte) i2);
                return;
            }
            if (this.f107017b.equals("H") || this.f107017b.equals("FH")) {
                newAttribute.addInteger(2, i2);
                return;
            }
            if (this.f107017b.equals("SH")) {
                newAttribute.addInteger(2, (short) i2);
                return;
            }
            if (this.f107017b.equals("I") || this.f107017b.equals("FI")) {
                newAttribute.addInteger(4, i2);
                return;
            }
            if (this.f107017b.equals("SI")) {
                newAttribute.addInteger(4, i2);
                return;
            }
            if (this.f107017b.equals("V") || this.f107017b.equals("FV") || this.f107017b.equals("SV")) {
                return;
            }
            if (this.f107017b.startsWith("PO")) {
                newAttribute.addBCOffset(getLength(this.f107017b.substring(2).toCharArray()[0]), i2);
                return;
            }
            if (this.f107017b.startsWith("P")) {
                newAttribute.addBCIndex(getLength(this.f107017b.substring(1).toCharArray()[0]), i2);
                return;
            }
            if (!this.f107017b.startsWith("OS")) {
                if (this.f107017b.startsWith(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION)) {
                    newAttribute.addBCLength(getLength(this.f107017b.substring(1).toCharArray()[0]), i2);
                }
            } else {
                int length = getLength(this.f107017b.substring(2).toCharArray()[0]);
                if (length == 1) {
                    i2 = (byte) i2;
                } else if (length == 2) {
                    i2 = (short) i2;
                }
                newAttribute.addBCLength(length, i2);
            }
        }

        /* renamed from: b */
        public int m67086b(int i) {
            return this.f107018c[i];
        }

        public String getTag() {
            return this.f107017b;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void readBands(InputStream inputStream, int i) throws IOException, Pack200Exception {
            this.f107018c = NewAttributeBands.this.decodeBandInt(NewAttributeBands.this.f107007a.getName() + "_" + this.f107017b, inputStream, NewAttributeBands.this.getCodec(this.f107017b), i);
        }
    }

    /* loaded from: classes12.dex */
    public class Reference extends AbstractC18900c {

        /* renamed from: b */
        public final String f107020b;

        /* renamed from: c */
        public Object f107021c;

        /* renamed from: d */
        public final int f107022d;

        public Reference(String str) {
            super();
            this.f107020b = str;
            this.f107022d = getLength(str.charAt(str.length() - 1));
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void addToAttribute(int i, NewAttribute newAttribute) {
            if (this.f107020b.startsWith("KI")) {
                newAttribute.addToBody(this.f107022d, ((CPInteger[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("KJ")) {
                newAttribute.addToBody(this.f107022d, ((CPLong[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("KF")) {
                newAttribute.addToBody(this.f107022d, ((CPFloat[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("KD")) {
                newAttribute.addToBody(this.f107022d, ((CPDouble[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("KS")) {
                newAttribute.addToBody(this.f107022d, ((CPString[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("RC")) {
                newAttribute.addToBody(this.f107022d, ((CPClass[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("RS")) {
                newAttribute.addToBody(this.f107022d, ((CPUTF8[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("RD")) {
                newAttribute.addToBody(this.f107022d, ((CPNameAndType[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("RF")) {
                newAttribute.addToBody(this.f107022d, ((CPFieldRef[]) this.f107021c)[i]);
                return;
            }
            if (this.f107020b.startsWith("RM")) {
                newAttribute.addToBody(this.f107022d, ((CPMethodRef[]) this.f107021c)[i]);
            } else if (this.f107020b.startsWith("RI")) {
                newAttribute.addToBody(this.f107022d, ((CPInterfaceMethodRef[]) this.f107021c)[i]);
            } else if (this.f107020b.startsWith("RU")) {
                newAttribute.addToBody(this.f107022d, ((CPUTF8[]) this.f107021c)[i]);
            }
        }

        public String getTag() {
            return this.f107020b;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void readBands(InputStream inputStream, int i) throws IOException, Pack200Exception {
            if (this.f107020b.startsWith("KI")) {
                NewAttributeBands newAttributeBands = NewAttributeBands.this;
                this.f107021c = newAttributeBands.parseCPIntReferences(newAttributeBands.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("KJ")) {
                NewAttributeBands newAttributeBands2 = NewAttributeBands.this;
                this.f107021c = newAttributeBands2.parseCPLongReferences(newAttributeBands2.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("KF")) {
                NewAttributeBands newAttributeBands3 = NewAttributeBands.this;
                this.f107021c = newAttributeBands3.parseCPFloatReferences(newAttributeBands3.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("KD")) {
                NewAttributeBands newAttributeBands4 = NewAttributeBands.this;
                this.f107021c = newAttributeBands4.parseCPDoubleReferences(newAttributeBands4.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("KS")) {
                NewAttributeBands newAttributeBands5 = NewAttributeBands.this;
                this.f107021c = newAttributeBands5.parseCPStringReferences(newAttributeBands5.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("RC")) {
                NewAttributeBands newAttributeBands6 = NewAttributeBands.this;
                this.f107021c = newAttributeBands6.parseCPClassReferences(newAttributeBands6.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("RS")) {
                NewAttributeBands newAttributeBands7 = NewAttributeBands.this;
                this.f107021c = newAttributeBands7.parseCPSignatureReferences(newAttributeBands7.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("RD")) {
                NewAttributeBands newAttributeBands8 = NewAttributeBands.this;
                this.f107021c = newAttributeBands8.parseCPDescriptorReferences(newAttributeBands8.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("RF")) {
                NewAttributeBands newAttributeBands9 = NewAttributeBands.this;
                this.f107021c = newAttributeBands9.parseCPFieldRefReferences(newAttributeBands9.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.f107020b.startsWith("RM")) {
                NewAttributeBands newAttributeBands10 = NewAttributeBands.this;
                this.f107021c = newAttributeBands10.parseCPMethodRefReferences(newAttributeBands10.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
            } else if (this.f107020b.startsWith("RI")) {
                NewAttributeBands newAttributeBands11 = NewAttributeBands.this;
                this.f107021c = newAttributeBands11.parseCPInterfaceMethodRefReferences(newAttributeBands11.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
            } else if (this.f107020b.startsWith("RU")) {
                NewAttributeBands newAttributeBands12 = NewAttributeBands.this;
                this.f107021c = newAttributeBands12.parseCPUTF8References(newAttributeBands12.f107007a.getName(), inputStream, Codec.UNSIGNED5, i);
            }
        }
    }

    /* loaded from: classes12.dex */
    public class Replication extends AbstractC18900c {

        /* renamed from: b */
        public final Integral f107024b;

        /* renamed from: c */
        public final List<AbstractC18900c> f107025c;

        public Replication(String str, String str2) throws IOException {
            super();
            this.f107025c = new ArrayList();
            this.f107024b = new Integral(str);
            StringReader stringReader = new StringReader(str2);
            while (true) {
                AbstractC18900c m67077j = NewAttributeBands.this.m67077j(stringReader);
                if (m67077j == null) {
                    return;
                } else {
                    this.f107025c.add(m67077j);
                }
            }
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void addToAttribute(int i, NewAttribute newAttribute) {
            this.f107024b.addToAttribute(i, newAttribute);
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                i2 += this.f107024b.m67086b(i3);
            }
            long m67086b = this.f107024b.m67086b(i);
            for (int i4 = i2; i4 < i2 + m67086b; i4++) {
                Iterator<AbstractC18900c> it2 = this.f107025c.iterator();
                while (it2.hasNext()) {
                    it2.next().addToAttribute(i4, newAttribute);
                }
            }
        }

        public Integral getCountElement() {
            return this.f107024b;
        }

        public List<AbstractC18900c> getLayoutElements() {
            return this.f107025c;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void readBands(InputStream inputStream, int i) throws IOException, Pack200Exception {
            this.f107024b.readBands(inputStream, i);
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                i2 += this.f107024b.m67086b(i3);
            }
            Iterator<AbstractC18900c> it2 = this.f107025c.iterator();
            while (it2.hasNext()) {
                it2.next().readBands(inputStream, i2);
            }
        }
    }

    /* loaded from: classes12.dex */
    public class Union extends AbstractC18900c {

        /* renamed from: b */
        public final Integral f107027b;

        /* renamed from: c */
        public final List<UnionCase> f107028c;

        /* renamed from: d */
        public final List<AbstractC18900c> f107029d;

        /* renamed from: e */
        public int[] f107030e;

        /* renamed from: f */
        public int f107031f;

        public Union(String str, List<UnionCase> list, List<AbstractC18900c> list2) {
            super();
            this.f107027b = new Integral(str);
            this.f107028c = list;
            this.f107029d = list2;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void addToAttribute(int i, NewAttribute newAttribute) {
            this.f107027b.addToAttribute(i, newAttribute);
            int[] iArr = this.f107027b.f107018c;
            int m67086b = this.f107027b.m67086b(i);
            int i2 = 0;
            boolean z = true;
            for (UnionCase unionCase : this.f107028c) {
                if (unionCase.hasTag(m67086b)) {
                    for (int i3 = 0; i3 < i; i3++) {
                        if (unionCase.hasTag(iArr[i3])) {
                            i2++;
                        }
                    }
                    unionCase.addToAttribute(i2, newAttribute);
                    z = false;
                }
            }
            if (z) {
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Iterator<UnionCase> it2 = this.f107028c.iterator();
                    boolean z2 = false;
                    while (it2.hasNext()) {
                        if (it2.next().hasTag(iArr[i5])) {
                            z2 = true;
                        }
                    }
                    if (!z2) {
                        i4++;
                    }
                }
                List<AbstractC18900c> list = this.f107029d;
                if (list != null) {
                    Iterator<AbstractC18900c> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().addToAttribute(i4, newAttribute);
                    }
                }
            }
        }

        public List<AbstractC18900c> getDefaultCaseBody() {
            return this.f107029d;
        }

        public List<UnionCase> getUnionCases() {
            return this.f107028c;
        }

        public Integral getUnionTag() {
            return this.f107027b;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void readBands(InputStream inputStream, int i) throws IOException, Pack200Exception {
            this.f107027b.readBands(inputStream, i);
            int[] iArr = this.f107027b.f107018c;
            this.f107030e = new int[this.f107028c.size()];
            for (int i2 = 0; i2 < this.f107030e.length; i2++) {
                UnionCase unionCase = this.f107028c.get(i2);
                for (int i3 : iArr) {
                    if (unionCase.hasTag(i3)) {
                        int[] iArr2 = this.f107030e;
                        iArr2[i2] = iArr2[i2] + 1;
                    }
                }
                unionCase.readBands(inputStream, this.f107030e[i2]);
            }
            for (int i4 : iArr) {
                Iterator<UnionCase> it2 = this.f107028c.iterator();
                boolean z = false;
                while (it2.hasNext()) {
                    if (it2.next().hasTag(i4)) {
                        z = true;
                    }
                }
                if (!z) {
                    this.f107031f++;
                }
            }
            List<AbstractC18900c> list = this.f107029d;
            if (list != null) {
                Iterator<AbstractC18900c> it3 = list.iterator();
                while (it3.hasNext()) {
                    it3.next().readBands(inputStream, this.f107031f);
                }
            }
        }
    }

    /* loaded from: classes12.dex */
    public class UnionCase extends AbstractC18900c {

        /* renamed from: b */
        public List<AbstractC18900c> f107033b;

        /* renamed from: c */
        public final List<Integer> f107034c;

        public UnionCase(List<Integer> list) {
            super();
            this.f107034c = list;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void addToAttribute(int i, NewAttribute newAttribute) {
            List<AbstractC18900c> list = this.f107033b;
            if (list != null) {
                Iterator<AbstractC18900c> it2 = list.iterator();
                while (it2.hasNext()) {
                    it2.next().addToAttribute(i, newAttribute);
                }
            }
        }

        public List<AbstractC18900c> getBody() {
            List<AbstractC18900c> list = this.f107033b;
            return list == null ? Collections.EMPTY_LIST : list;
        }

        public boolean hasTag(int i) {
            return this.f107034c.contains(Integer.valueOf(i));
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.InterfaceC18899b
        public void readBands(InputStream inputStream, int i) throws IOException, Pack200Exception {
            List<AbstractC18900c> list = this.f107033b;
            if (list != null) {
                Iterator<AbstractC18900c> it2 = list.iterator();
                while (it2.hasNext()) {
                    it2.next().readBands(inputStream, i);
                }
            }
        }

        public boolean hasTag(long j) {
            return this.f107034c.contains(Integer.valueOf((int) j));
        }

        public UnionCase(List<Integer> list, List<AbstractC18900c> list2) {
            super();
            this.f107034c = list;
            this.f107033b = list2;
        }
    }

    /* renamed from: org.apache.commons.compress.harmony.unpack200.NewAttributeBands$b */
    /* loaded from: classes12.dex */
    public interface InterfaceC18899b {
        void addToAttribute(int i, NewAttribute newAttribute);

        void readBands(InputStream inputStream, int i) throws IOException, Pack200Exception;
    }

    /* renamed from: org.apache.commons.compress.harmony.unpack200.NewAttributeBands$c */
    /* loaded from: classes12.dex */
    public abstract class AbstractC18900c implements InterfaceC18899b {
        public AbstractC18900c() {
        }

        public int getLength(char c) {
            if (c == 'B') {
                return 1;
            }
            if (c == 'V') {
                return 0;
            }
            if (c != 'H') {
                return c != 'I' ? 0 : 4;
            }
            return 2;
        }
    }

    public NewAttributeBands(Segment segment, AttributeLayout attributeLayout) throws IOException {
        super(segment);
        this.f107007a = attributeLayout;
        m67074g();
        attributeLayout.setBackwardsCallCount(this.f107008b);
    }

    /* renamed from: e */
    public final Attribute m67072e(int i, List<InterfaceC18899b> list) {
        NewAttribute newAttribute = new NewAttribute(this.segment.getCpBands().cpUTF8Value(this.f107007a.getName()), this.f107007a.getIndex());
        Iterator<InterfaceC18899b> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().addToAttribute(i, newAttribute);
        }
        return newAttribute;
    }

    /* renamed from: f */
    public final StringReader m67073f(StringReader stringReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        int i = -1;
        while (i != 0) {
            int read = stringReader.read();
            if (read == -1) {
                break;
            }
            char c = (char) read;
            if (c == ']') {
                i++;
            }
            if (c == '[') {
                i--;
            }
            if (i != 0) {
                sb.append(c);
            }
        }
        return new StringReader(sb.toString());
    }

    /* renamed from: g */
    public final void m67074g() throws IOException {
        if (this.attributeLayoutElements != null) {
            return;
        }
        this.attributeLayoutElements = new ArrayList();
        StringReader stringReader = new StringReader(this.f107007a.getLayout());
        while (true) {
            InterfaceC18899b m67076i = m67076i(stringReader);
            if (m67076i == null) {
                m67081n();
                return;
            }
            this.attributeLayoutElements.add(m67076i);
        }
    }

    public int getBackwardsCallCount() {
        return this.f107008b;
    }

    public BHSDCodec getCodec(String str) {
        return str.indexOf(79) >= 0 ? Codec.BRANCH5 : str.indexOf(80) >= 0 ? Codec.BCI5 : (str.indexOf(83) < 0 || str.indexOf("KS") >= 0 || str.indexOf("RS") >= 0) ? str.indexOf(66) >= 0 ? Codec.BYTE1 : Codec.UNSIGNED5 : Codec.SIGNED5;
    }

    /* renamed from: h */
    public final List<AbstractC18900c> m67075h(StringReader stringReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            AbstractC18900c m67077j = m67077j(stringReader);
            if (m67077j == null) {
                return arrayList;
            }
            arrayList.add(m67077j);
        }
    }

    /* renamed from: i */
    public final InterfaceC18899b m67076i(StringReader stringReader) throws IOException {
        stringReader.mark(1);
        int read = stringReader.read();
        if (read == -1) {
            return null;
        }
        if (read == 91) {
            return new Callable(m67075h(m67073f(stringReader)));
        }
        stringReader.reset();
        return m67077j(stringReader);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0029. Please report as an issue. */
    /* renamed from: j */
    public final AbstractC18900c m67077j(StringReader stringReader) throws IOException {
        int read = stringReader.read();
        List<AbstractC18900c> list = null;
        if (read == -1) {
            return null;
        }
        if (read == 40) {
            int intValue = m67079l(stringReader).intValue();
            stringReader.read();
            return new Call(intValue);
        }
        if (read != 66) {
            if (read != 70) {
                if (read != 75) {
                    if (read != 86 && read != 72 && read != 73) {
                        switch (read) {
                            case 78:
                                char read2 = (char) stringReader.read();
                                stringReader.read();
                                return new Replication("" + read2, m67080m(stringReader));
                            case 79:
                                stringReader.mark(1);
                                if (stringReader.read() == 83) {
                                    return new Integral("OS" + ((char) stringReader.read()));
                                }
                                stringReader.reset();
                                return new Integral(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION + ((char) stringReader.read()));
                            case 80:
                                stringReader.mark(1);
                                if (stringReader.read() == 79) {
                                    return new Integral("PO" + ((char) stringReader.read()));
                                }
                                stringReader.reset();
                                return new Integral("P" + ((char) stringReader.read()));
                            default:
                                switch (read) {
                                    case 82:
                                        break;
                                    case 83:
                                        break;
                                    case 84:
                                        String str = "" + ((char) stringReader.read());
                                        if (str.equals("S")) {
                                            str = str + ((char) stringReader.read());
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        while (true) {
                                            UnionCase m67078k = m67078k(stringReader);
                                            if (m67078k == null) {
                                                stringReader.read();
                                                stringReader.read();
                                                stringReader.read();
                                                stringReader.mark(1);
                                                if (((char) stringReader.read()) != ']') {
                                                    stringReader.reset();
                                                    list = m67075h(m67073f(stringReader));
                                                }
                                                return new Union(str, arrayList, list);
                                            }
                                            arrayList.add(m67078k);
                                        }
                                    default:
                                        return null;
                                }
                                break;
                        }
                    }
                }
                StringBuilder sb = new StringBuilder("");
                sb.append((char) read);
                sb.append((char) stringReader.read());
                char read3 = (char) stringReader.read();
                sb.append(read3);
                if (read3 == 'N') {
                    sb.append((char) stringReader.read());
                }
                return new Reference(sb.toString());
            }
            return new Integral(new String(new char[]{(char) read, (char) stringReader.read()}));
        }
        return new Integral(new String(new char[]{(char) read}));
    }

    /* renamed from: k */
    public final UnionCase m67078k(StringReader stringReader) throws IOException {
        Integer m67079l;
        stringReader.mark(2);
        stringReader.read();
        int read = stringReader.read();
        if (((char) read) == ')' || read == -1) {
            stringReader.reset();
            return null;
        }
        stringReader.reset();
        stringReader.read();
        ArrayList arrayList = new ArrayList();
        do {
            m67079l = m67079l(stringReader);
            if (m67079l != null) {
                arrayList.add(m67079l);
                stringReader.read();
            }
        } while (m67079l != null);
        stringReader.read();
        stringReader.mark(1);
        if (((char) stringReader.read()) == ']') {
            return new UnionCase(arrayList);
        }
        stringReader.reset();
        return new UnionCase(arrayList, m67075h(m67073f(stringReader)));
    }

    /* renamed from: l */
    public final Integer m67079l(StringReader stringReader) throws IOException {
        stringReader.mark(1);
        int i = 0;
        boolean z = ((char) stringReader.read()) == '-';
        if (!z) {
            stringReader.reset();
        }
        stringReader.mark(100);
        while (true) {
            int read = stringReader.read();
            if (read == -1 || !Character.isDigit((char) read)) {
                break;
            }
            i++;
        }
        stringReader.reset();
        if (i == 0) {
            return null;
        }
        char[] cArr = new char[i];
        if (stringReader.read(cArr) != i) {
            throw new IOException("Error reading from the input stream");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "-" : "");
        sb.append(new String(cArr));
        return Integer.valueOf(Integer.parseInt(sb.toString()));
    }

    /* renamed from: m */
    public final String m67080m(StringReader stringReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        int i = -1;
        while (i != 0) {
            int read = stringReader.read();
            if (read == -1) {
                break;
            }
            char c = (char) read;
            if (c == ']') {
                i++;
            }
            if (c == '[') {
                i--;
            }
            if (i != 0) {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    /* renamed from: n */
    public final void m67081n() {
        int i = 0;
        for (int i2 = 0; i2 < this.attributeLayoutElements.size(); i2++) {
            InterfaceC18899b interfaceC18899b = this.attributeLayoutElements.get(i2);
            if (interfaceC18899b instanceof Callable) {
                Callable callable = (Callable) interfaceC18899b;
                if (i2 == 0) {
                    callable.setFirstCallable(true);
                }
                Iterator it2 = callable.f107012a.iterator();
                while (it2.hasNext()) {
                    i += m67082o(i2, callable, (AbstractC18900c) it2.next());
                }
            }
        }
        this.f107008b = i;
    }

    /* renamed from: o */
    public final int m67082o(int i, Callable callable, AbstractC18900c abstractC18900c) {
        int i2 = 0;
        if (!(abstractC18900c instanceof Call)) {
            if (!(abstractC18900c instanceof Replication)) {
                return 0;
            }
            Iterator it2 = ((Replication) abstractC18900c).f107025c.iterator();
            while (it2.hasNext()) {
                i2 += m67082o(i, callable, (AbstractC18900c) it2.next());
            }
            return i2;
        }
        Call call = (Call) abstractC18900c;
        int i3 = call.f107009b;
        if (i3 == 0) {
            call.setCallable(callable);
        } else {
            if (i3 > 0) {
                for (int i4 = i + 1; i4 < this.attributeLayoutElements.size(); i4++) {
                    InterfaceC18899b interfaceC18899b = this.attributeLayoutElements.get(i4);
                    if ((interfaceC18899b instanceof Callable) && i3 - 1 == 0) {
                        call.setCallable((Callable) interfaceC18899b);
                        return 0;
                    }
                }
                return 0;
            }
            int i5 = i - 1;
            while (true) {
                if (i5 < 0) {
                    break;
                }
                InterfaceC18899b interfaceC18899b2 = this.attributeLayoutElements.get(i5);
                if ((interfaceC18899b2 instanceof Callable) && (i3 = i3 + 1) == 0) {
                    call.setCallable((Callable) interfaceC18899b2);
                    break;
                }
                i5--;
            }
        }
        return 1;
    }

    public List<Attribute> parseAttributes(InputStream inputStream, int i) throws IOException, Pack200Exception {
        Iterator<InterfaceC18899b> it2 = this.attributeLayoutElements.iterator();
        while (it2.hasNext()) {
            it2.next().readBands(inputStream, i);
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(m67072e(i2, this.attributeLayoutElements));
        }
        return arrayList;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void read(InputStream inputStream) throws IOException, Pack200Exception {
    }

    public void setBackwardsCalls(int[] iArr) throws IOException {
        m67074g();
        int i = 0;
        for (InterfaceC18899b interfaceC18899b : this.attributeLayoutElements) {
            if (interfaceC18899b instanceof Callable) {
                Callable callable = (Callable) interfaceC18899b;
                if (callable.isBackwardsCallable()) {
                    callable.addCount(iArr[i]);
                    i++;
                }
            }
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() throws IOException, Pack200Exception {
    }
}
