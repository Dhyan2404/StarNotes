package org.apache.commons.compress.harmony.pack200;

import com.couchbase.lite.internal.BaseTLSIdentity;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.harmony.pack200.AttributeDefinitionBands;
import org.objectweb.asm.Label;

/* loaded from: classes12.dex */
public class NewAttributeBands extends BandSet {
    protected List<AttributeLayoutElement> attributeLayoutElements;

    /* renamed from: e */
    public int[] f106670e;

    /* renamed from: f */
    public final CpBands f106671f;

    /* renamed from: g */
    public final AttributeDefinitionBands.AttributeDefinition f106672g;

    /* renamed from: h */
    public boolean f106673h;

    /* renamed from: i */
    public Integral f106674i;

    /* loaded from: classes12.dex */
    public interface AttributeLayoutElement {
        void addAttributeToBand(NewAttribute newAttribute, InputStream inputStream);

        void pack(OutputStream outputStream) throws IOException, Pack200Exception;

        void renumberBci(IntList intList, Map<Label, Integer> map);
    }

    /* loaded from: classes12.dex */
    public class Call extends LayoutElement {

        /* renamed from: b */
        public final int f106675b;

        /* renamed from: c */
        public Callable f106676c;

        public Call(int i) {
            super();
            this.f106675b = i;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void addAttributeToBand(NewAttribute newAttribute, InputStream inputStream) {
            this.f106676c.addAttributeToBand(newAttribute, inputStream);
            if (this.f106675b < 1) {
                this.f106676c.addBackwardsCall();
            }
        }

        public Callable getCallable() {
            return this.f106676c;
        }

        public int getCallableIndex() {
            return this.f106675b;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void pack(OutputStream outputStream) {
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void renumberBci(IntList intList, Map<Label, Integer> map) {
        }

        public void setCallable(Callable callable) {
            this.f106676c = callable;
            if (this.f106675b < 1) {
                callable.setBackwardsCallable();
            }
        }
    }

    /* loaded from: classes12.dex */
    public class Callable implements AttributeLayoutElement {

        /* renamed from: a */
        public final List<LayoutElement> f106678a;

        /* renamed from: b */
        public boolean f106679b;

        /* renamed from: c */
        public int f106680c;

        public Callable(List<LayoutElement> list) {
            this.f106678a = list;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void addAttributeToBand(NewAttribute newAttribute, InputStream inputStream) {
            Iterator<LayoutElement> it2 = this.f106678a.iterator();
            while (it2.hasNext()) {
                it2.next().addAttributeToBand(newAttribute, inputStream);
            }
        }

        public void addBackwardsCall() {
            int[] iArr = NewAttributeBands.this.f106670e;
            int i = this.f106680c;
            iArr[i] = iArr[i] + 1;
        }

        public List<LayoutElement> getBody() {
            return this.f106678a;
        }

        public boolean isBackwardsCallable() {
            return this.f106679b;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
            Iterator<LayoutElement> it2 = this.f106678a.iterator();
            while (it2.hasNext()) {
                it2.next().pack(outputStream);
            }
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void renumberBci(IntList intList, Map<Label, Integer> map) {
            Iterator<LayoutElement> it2 = this.f106678a.iterator();
            while (it2.hasNext()) {
                it2.next().renumberBci(intList, map);
            }
        }

        public void setBackwardsCallable() {
            this.f106679b = true;
        }

        public void setBackwardsCallableIndex(int i) {
            this.f106680c = i;
        }
    }

    /* loaded from: classes12.dex */
    public abstract class LayoutElement implements AttributeLayoutElement {
        public LayoutElement() {
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

    /* loaded from: classes12.dex */
    public class Reference extends LayoutElement {

        /* renamed from: b */
        public final String f106689b;

        /* renamed from: c */
        public List<ConstantPoolEntry> f106690c;

        /* renamed from: d */
        public boolean f106691d;

        public Reference(String str) {
            super();
            this.f106691d = false;
            this.f106689b = str;
            this.f106691d = str.indexOf(78) != -1;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void addAttributeToBand(NewAttribute newAttribute, InputStream inputStream) {
            int m66967u = NewAttributeBands.this.m66967u(4, inputStream);
            if (this.f106689b.startsWith("RC")) {
                this.f106690c.add(NewAttributeBands.this.f106671f.getCPClass(newAttribute.readClass(m66967u)));
                return;
            }
            if (this.f106689b.startsWith("RU")) {
                this.f106690c.add(NewAttributeBands.this.f106671f.getCPUtf8(newAttribute.readUTF8(m66967u)));
            } else if (this.f106689b.startsWith("RS")) {
                this.f106690c.add(NewAttributeBands.this.f106671f.getCPSignature(newAttribute.readUTF8(m66967u)));
            } else {
                this.f106690c.add(NewAttributeBands.this.f106671f.getConstant(newAttribute.readConst(m66967u)));
            }
        }

        public String getTag() {
            return this.f106689b;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
            int[] cpEntryOrNullListToArray = this.f106691d ? NewAttributeBands.this.cpEntryOrNullListToArray(this.f106690c) : NewAttributeBands.this.cpEntryListToArray(this.f106690c);
            byte[] encodeBandInt = NewAttributeBands.this.encodeBandInt(this.f106689b, cpEntryOrNullListToArray, Codec.UNSIGNED5);
            outputStream.write(encodeBandInt);
            PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from " + this.f106689b + IteratorUtils.f104923a + cpEntryOrNullListToArray.length + IteratorUtils.f104924b);
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void renumberBci(IntList intList, Map<Label, Integer> map) {
        }
    }

    /* loaded from: classes12.dex */
    public class Replication extends LayoutElement {

        /* renamed from: b */
        public final Integral f106693b;

        /* renamed from: c */
        public final List<LayoutElement> f106694c;

        public Replication(String str, String str2) throws IOException {
            super();
            this.f106694c = new ArrayList();
            this.f106693b = new Integral(str);
            StringReader stringReader = new StringReader(str2);
            while (true) {
                LayoutElement m66969w = NewAttributeBands.this.m66969w(stringReader);
                if (m66969w == null) {
                    return;
                } else {
                    this.f106694c.add(m66969w);
                }
            }
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void addAttributeToBand(NewAttribute newAttribute, InputStream inputStream) {
            this.f106693b.addAttributeToBand(newAttribute, inputStream);
            int latestValue = this.f106693b.latestValue();
            for (int i = 0; i < latestValue; i++) {
                Iterator<LayoutElement> it2 = this.f106694c.iterator();
                while (it2.hasNext()) {
                    it2.next().addAttributeToBand(newAttribute, inputStream);
                }
            }
        }

        public Integral getCountElement() {
            return this.f106693b;
        }

        public List<LayoutElement> getLayoutElements() {
            return this.f106694c;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
            this.f106693b.pack(outputStream);
            Iterator<LayoutElement> it2 = this.f106694c.iterator();
            while (it2.hasNext()) {
                it2.next().pack(outputStream);
            }
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void renumberBci(IntList intList, Map<Label, Integer> map) {
            Iterator<LayoutElement> it2 = this.f106694c.iterator();
            while (it2.hasNext()) {
                it2.next().renumberBci(intList, map);
            }
        }
    }

    /* loaded from: classes12.dex */
    public class Union extends LayoutElement {

        /* renamed from: b */
        public final Integral f106696b;

        /* renamed from: c */
        public final List<UnionCase> f106697c;

        /* renamed from: d */
        public final List<LayoutElement> f106698d;

        public Union(String str, List<UnionCase> list, List<LayoutElement> list2) {
            super();
            this.f106696b = new Integral(str);
            this.f106697c = list;
            this.f106698d = list2;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void addAttributeToBand(NewAttribute newAttribute, InputStream inputStream) {
            this.f106696b.addAttributeToBand(newAttribute, inputStream);
            long latestValue = this.f106696b.latestValue();
            boolean z = true;
            for (UnionCase unionCase : this.f106697c) {
                if (unionCase.hasTag(latestValue)) {
                    unionCase.addAttributeToBand(newAttribute, inputStream);
                    z = false;
                }
            }
            if (z) {
                Iterator<LayoutElement> it2 = this.f106698d.iterator();
                while (it2.hasNext()) {
                    it2.next().addAttributeToBand(newAttribute, inputStream);
                }
            }
        }

        public List<LayoutElement> getDefaultCaseBody() {
            return this.f106698d;
        }

        public List<UnionCase> getUnionCases() {
            return this.f106697c;
        }

        public Integral getUnionTag() {
            return this.f106696b;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
            this.f106696b.pack(outputStream);
            Iterator<UnionCase> it2 = this.f106697c.iterator();
            while (it2.hasNext()) {
                it2.next().pack(outputStream);
            }
            Iterator<LayoutElement> it3 = this.f106698d.iterator();
            while (it3.hasNext()) {
                it3.next().pack(outputStream);
            }
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void renumberBci(IntList intList, Map<Label, Integer> map) {
            Iterator<UnionCase> it2 = this.f106697c.iterator();
            while (it2.hasNext()) {
                it2.next().renumberBci(intList, map);
            }
            Iterator<LayoutElement> it3 = this.f106698d.iterator();
            while (it3.hasNext()) {
                it3.next().renumberBci(intList, map);
            }
        }
    }

    public NewAttributeBands(int i, CpBands cpBands, SegmentHeader segmentHeader, AttributeDefinitionBands.AttributeDefinition attributeDefinition) throws IOException {
        super(i, segmentHeader);
        this.f106672g = attributeDefinition;
        this.f106671f = cpBands;
        m66965s();
    }

    /* renamed from: A */
    public final void m66961A() {
        int i = 0;
        for (int i2 = 0; i2 < this.attributeLayoutElements.size(); i2++) {
            AttributeLayoutElement attributeLayoutElement = this.attributeLayoutElements.get(i2);
            if (attributeLayoutElement instanceof Callable) {
                Callable callable = (Callable) attributeLayoutElement;
                Iterator it2 = callable.f106678a.iterator();
                while (it2.hasNext()) {
                    m66962B(i2, callable, (LayoutElement) it2.next());
                }
            }
        }
        for (AttributeLayoutElement attributeLayoutElement2 : this.attributeLayoutElements) {
            if (attributeLayoutElement2 instanceof Callable) {
                Callable callable2 = (Callable) attributeLayoutElement2;
                if (callable2.f106679b) {
                    callable2.setBackwardsCallableIndex(i);
                    i++;
                }
            }
        }
        this.f106670e = new int[i];
    }

    /* renamed from: B */
    public final void m66962B(int i, Callable callable, LayoutElement layoutElement) {
        if (!(layoutElement instanceof Call)) {
            if (layoutElement instanceof Replication) {
                Iterator it2 = ((Replication) layoutElement).f106694c.iterator();
                while (it2.hasNext()) {
                    m66962B(i, callable, (LayoutElement) it2.next());
                }
                return;
            }
            return;
        }
        Call call = (Call) layoutElement;
        int i2 = call.f106675b;
        if (i2 == 0) {
            call.setCallable(callable);
            return;
        }
        if (i2 <= 0) {
            for (int i3 = i - 1; i3 >= 0; i3--) {
                AttributeLayoutElement attributeLayoutElement = this.attributeLayoutElements.get(i3);
                if ((attributeLayoutElement instanceof Callable) && (i2 = i2 + 1) == 0) {
                    call.setCallable((Callable) attributeLayoutElement);
                    return;
                }
            }
            return;
        }
        while (true) {
            i++;
            if (i >= this.attributeLayoutElements.size()) {
                return;
            }
            AttributeLayoutElement attributeLayoutElement2 = this.attributeLayoutElements.get(i);
            if ((attributeLayoutElement2 instanceof Callable) && i2 - 1 == 0) {
                call.setCallable((Callable) attributeLayoutElement2);
                return;
            }
        }
    }

    public void addAttribute(NewAttribute newAttribute) {
        this.f106673h = true;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(newAttribute.getBytes());
        Iterator<AttributeLayoutElement> it2 = this.attributeLayoutElements.iterator();
        while (it2.hasNext()) {
            it2.next().addAttributeToBand(newAttribute, byteArrayInputStream);
        }
    }

    public String getAttributeName() {
        return this.f106672g.name.getUnderlyingString();
    }

    public int getFlagIndex() {
        return this.f106672g.index;
    }

    public boolean isUsedAtLeastOnce() {
        return this.f106673h;
    }

    public int[] numBackwardsCalls() {
        return this.f106670e;
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        Iterator<AttributeLayoutElement> it2 = this.attributeLayoutElements.iterator();
        while (it2.hasNext()) {
            it2.next().pack(outputStream);
        }
    }

    /* renamed from: q */
    public final BHSDCodec m66963q(String str) {
        return str.indexOf(79) >= 0 ? Codec.BRANCH5 : str.indexOf(80) >= 0 ? Codec.BCI5 : (str.indexOf(83) < 0 || str.indexOf("KS") >= 0 || str.indexOf("RS") >= 0) ? str.indexOf(66) >= 0 ? Codec.BYTE1 : Codec.UNSIGNED5 : Codec.SIGNED5;
    }

    /* renamed from: r */
    public final StringReader m66964r(StringReader stringReader) throws IOException {
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

    public void renumberBci(IntList intList, Map<Label, Integer> map) {
        Iterator<AttributeLayoutElement> it2 = this.attributeLayoutElements.iterator();
        while (it2.hasNext()) {
            it2.next().renumberBci(intList, map);
        }
    }

    /* renamed from: s */
    public final void m66965s() throws IOException {
        String underlyingString = this.f106672g.layout.getUnderlyingString();
        if (this.attributeLayoutElements != null) {
            return;
        }
        this.attributeLayoutElements = new ArrayList();
        StringReader stringReader = new StringReader(underlyingString);
        while (true) {
            AttributeLayoutElement m66968v = m66968v(stringReader);
            if (m66968v == null) {
                m66961A();
                return;
            }
            this.attributeLayoutElements.add(m66968v);
        }
    }

    /* renamed from: t */
    public final List<LayoutElement> m66966t(StringReader stringReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            LayoutElement m66969w = m66969w(stringReader);
            if (m66969w == null) {
                return arrayList;
            }
            arrayList.add(m66969w);
        }
    }

    /* renamed from: u */
    public final int m66967u(int i, InputStream inputStream) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            try {
                i2 = (i2 << 8) | inputStream.read();
            } catch (IOException e) {
                throw new UncheckedIOException("Error reading unknown attribute", e);
            }
        }
        if (i == 1) {
            i2 = (byte) i2;
        }
        return i == 2 ? (short) i2 : i2;
    }

    /* renamed from: v */
    public final AttributeLayoutElement m66968v(StringReader stringReader) throws IOException {
        stringReader.mark(1);
        int read = stringReader.read();
        if (read == -1) {
            return null;
        }
        if (read == 91) {
            return new Callable(m66966t(m66964r(stringReader)));
        }
        stringReader.reset();
        return m66969w(stringReader);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0029. Please report as an issue. */
    /* renamed from: w */
    public final LayoutElement m66969w(StringReader stringReader) throws IOException {
        int read = stringReader.read();
        List<LayoutElement> list = null;
        if (read == -1) {
            return null;
        }
        if (read == 40) {
            int intValue = m66971y(stringReader).intValue();
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
                                return new Replication("" + read2, m66972z(stringReader));
                            case 79:
                                stringReader.mark(1);
                                if (stringReader.read() == 83) {
                                    return new Integral("OS" + ((char) stringReader.read()), this.f106674i);
                                }
                                stringReader.reset();
                                return new Integral(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION + ((char) stringReader.read()), this.f106674i);
                            case 80:
                                stringReader.mark(1);
                                if (stringReader.read() == 79) {
                                    Integral integral = new Integral("PO" + ((char) stringReader.read()), this.f106674i);
                                    this.f106674i = integral;
                                    return integral;
                                }
                                stringReader.reset();
                                Integral integral2 = new Integral("P" + ((char) stringReader.read()));
                                this.f106674i = integral2;
                                return integral2;
                            default:
                                switch (read) {
                                    case 82:
                                        break;
                                    case 83:
                                        break;
                                    case 84:
                                        String valueOf = String.valueOf((char) stringReader.read());
                                        if (valueOf.equals("S")) {
                                            valueOf = valueOf + ((char) stringReader.read());
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        while (true) {
                                            UnionCase m66970x = m66970x(stringReader);
                                            if (m66970x == null) {
                                                stringReader.read();
                                                stringReader.read();
                                                stringReader.read();
                                                stringReader.mark(1);
                                                if (((char) stringReader.read()) != ']') {
                                                    stringReader.reset();
                                                    list = m66966t(m66964r(stringReader));
                                                }
                                                return new Union(valueOf, arrayList, list);
                                            }
                                            arrayList.add(m66970x);
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

    /* renamed from: x */
    public final UnionCase m66970x(StringReader stringReader) throws IOException {
        Integer m66971y;
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
            m66971y = m66971y(stringReader);
            if (m66971y != null) {
                arrayList.add(m66971y);
                stringReader.read();
            }
        } while (m66971y != null);
        stringReader.read();
        stringReader.mark(1);
        if (((char) stringReader.read()) == ']') {
            return new UnionCase(arrayList);
        }
        stringReader.reset();
        return new UnionCase(arrayList, m66966t(m66964r(stringReader)));
    }

    /* renamed from: y */
    public final Integer m66971y(StringReader stringReader) throws IOException {
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

    /* renamed from: z */
    public final String m66972z(StringReader stringReader) throws IOException {
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

    /* loaded from: classes12.dex */
    public class UnionCase extends LayoutElement {

        /* renamed from: b */
        public final List<LayoutElement> f106700b;

        /* renamed from: c */
        public final List<Integer> f106701c;

        public UnionCase(List<Integer> list) {
            super();
            this.f106701c = list;
            this.f106700b = Collections.EMPTY_LIST;
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void addAttributeToBand(NewAttribute newAttribute, InputStream inputStream) {
            Iterator<LayoutElement> it2 = this.f106700b.iterator();
            while (it2.hasNext()) {
                it2.next().addAttributeToBand(newAttribute, inputStream);
            }
        }

        public List<LayoutElement> getBody() {
            return this.f106700b;
        }

        public boolean hasTag(long j) {
            return this.f106701c.contains(Integer.valueOf((int) j));
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
            Iterator<LayoutElement> it2 = this.f106700b.iterator();
            while (it2.hasNext()) {
                it2.next().pack(outputStream);
            }
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void renumberBci(IntList intList, Map<Label, Integer> map) {
            Iterator<LayoutElement> it2 = this.f106700b.iterator();
            while (it2.hasNext()) {
                it2.next().renumberBci(intList, map);
            }
        }

        public UnionCase(List<Integer> list, List<LayoutElement> list2) {
            super();
            this.f106701c = list;
            this.f106700b = list2;
        }
    }

    /* loaded from: classes12.dex */
    public class Integral extends LayoutElement {

        /* renamed from: b */
        public final String f106682b;

        /* renamed from: c */
        public final List f106683c;

        /* renamed from: d */
        public final BHSDCodec f106684d;

        /* renamed from: e */
        public Integral f106685e;

        /* renamed from: f */
        public int f106686f;

        public Integral(String str) {
            super();
            this.f106683c = new ArrayList();
            this.f106682b = str;
            this.f106684d = NewAttributeBands.this.m66963q(str);
        }

        /* renamed from: a */
        public final void m66976a(List list, IntList intList, Map<Label, Integer> map) {
            for (int size = this.f106683c.size() - 1; size >= 0; size--) {
                Object obj = this.f106683c.get(size);
                if (obj instanceof Integer) {
                    return;
                }
                if (obj instanceof Label) {
                    this.f106683c.remove(size);
                    this.f106683c.add(size, Integer.valueOf(intList.get(map.get(obj).intValue()) - ((Integer) list.get(size)).intValue()));
                }
            }
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void addAttributeToBand(NewAttribute newAttribute, InputStream inputStream) {
            int m66967u;
            int m66967u2;
            Label label = null;
            if (this.f106682b.equals("B") || this.f106682b.equals("FB")) {
                m66967u = NewAttributeBands.this.m66967u(1, inputStream) & 255;
            } else if (this.f106682b.equals("SB")) {
                m66967u = NewAttributeBands.this.m66967u(1, inputStream);
            } else if (this.f106682b.equals("H") || this.f106682b.equals("FH")) {
                m66967u = NewAttributeBands.this.m66967u(2, inputStream) & 65535;
            } else if (this.f106682b.equals("SH")) {
                m66967u = NewAttributeBands.this.m66967u(2, inputStream);
            } else if (this.f106682b.equals("I") || this.f106682b.equals("FI")) {
                m66967u = NewAttributeBands.this.m66967u(4, inputStream);
            } else if (this.f106682b.equals("SI")) {
                m66967u = NewAttributeBands.this.m66967u(4, inputStream);
            } else {
                if (!this.f106682b.equals("V") && !this.f106682b.equals("FV") && !this.f106682b.equals("SV")) {
                    if (this.f106682b.startsWith("PO") || this.f106682b.startsWith("OS")) {
                        m66967u2 = NewAttributeBands.this.m66967u(getLength(this.f106682b.substring(2).toCharArray()[0]), inputStream) + this.f106685e.f106686f;
                        label = newAttribute.getLabel(m66967u2);
                        this.f106686f = m66967u2;
                    } else if (this.f106682b.startsWith("P")) {
                        m66967u2 = NewAttributeBands.this.m66967u(getLength(this.f106682b.substring(1).toCharArray()[0]), inputStream);
                        label = newAttribute.getLabel(m66967u2);
                        this.f106686f = m66967u2;
                    } else if (this.f106682b.startsWith(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION)) {
                        m66967u2 = NewAttributeBands.this.m66967u(getLength(this.f106682b.substring(1).toCharArray()[0]), inputStream) + this.f106685e.f106686f;
                        label = newAttribute.getLabel(m66967u2);
                        this.f106686f = m66967u2;
                    }
                    m66967u = m66967u2;
                }
                m66967u = 0;
            }
            if (label == null) {
                label = Integer.valueOf(m66967u);
            }
            this.f106683c.add(label);
        }

        public String getTag() {
            return this.f106682b;
        }

        public int latestValue() {
            return ((Integer) this.f106683c.get(r1.size() - 1)).intValue();
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
            PackingUtils.log("Writing new attribute bands...");
            NewAttributeBands newAttributeBands = NewAttributeBands.this;
            byte[] encodeBandInt = newAttributeBands.encodeBandInt(this.f106682b, newAttributeBands.integerListToArray(this.f106683c), this.f106684d);
            outputStream.write(encodeBandInt);
            PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from " + this.f106682b + IteratorUtils.f104923a + this.f106683c.size() + IteratorUtils.f104924b);
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttributeBands.AttributeLayoutElement
        public void renumberBci(IntList intList, Map<Label, Integer> map) {
            if (this.f106682b.startsWith(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION) || this.f106682b.startsWith("PO")) {
                m66976a(this.f106685e.f106683c, intList, map);
                return;
            }
            if (this.f106682b.startsWith("P")) {
                for (int size = this.f106683c.size() - 1; size >= 0; size--) {
                    Object obj = this.f106683c.get(size);
                    if (obj instanceof Integer) {
                        return;
                    }
                    if (obj instanceof Label) {
                        this.f106683c.remove(size);
                        this.f106683c.add(size, Integer.valueOf(intList.get(map.get(obj).intValue())));
                    }
                }
            }
        }

        public Integral(String str, Integral integral) {
            super();
            this.f106683c = new ArrayList();
            this.f106682b = str;
            this.f106684d = NewAttributeBands.this.m66963q(str);
            this.f106685e = integral;
        }
    }
}
