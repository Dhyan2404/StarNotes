package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.harmony.pack200.AttributeDefinitionBands;
import org.apache.commons.compress.harmony.pack200.NewAttribute;
import org.objectweb.asm.Attribute;

/* loaded from: classes12.dex */
public class AttributeDefinitionBands extends BandSet {
    public static final int CONTEXT_CLASS = 0;
    public static final int CONTEXT_CODE = 3;
    public static final int CONTEXT_FIELD = 1;
    public static final int CONTEXT_METHOD = 2;

    /* renamed from: e */
    public final List<AttributeDefinition> f106416e;

    /* renamed from: f */
    public final List<AttributeDefinition> f106417f;

    /* renamed from: g */
    public final List<AttributeDefinition> f106418g;

    /* renamed from: h */
    public final List<AttributeDefinition> f106419h;

    /* renamed from: i */
    public final List<AttributeDefinition> f106420i;

    /* renamed from: j */
    public final CpBands f106421j;

    /* renamed from: k */
    public final Segment f106422k;

    /* loaded from: classes12.dex */
    public static class AttributeDefinition {
        public int contextType;
        public int index;
        public CPUTF8 layout;
        public CPUTF8 name;

        public AttributeDefinition(int i, int i2, CPUTF8 cputf8, CPUTF8 cputf82) {
            this.index = i;
            this.contextType = i2;
            this.name = cputf8;
            this.layout = cputf82;
        }
    }

    public AttributeDefinitionBands(Segment segment, int i, Attribute[] attributeArr) {
        super(i, segment.getSegmentHeader());
        this.f106416e = new ArrayList();
        this.f106417f = new ArrayList();
        this.f106418g = new ArrayList();
        this.f106419h = new ArrayList();
        this.f106420i = new ArrayList();
        this.f106421j = segment.getCpBands();
        this.f106422k = segment;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        for (Attribute attribute : attributeArr) {
            NewAttribute newAttribute = (NewAttribute) attribute;
            if (!(newAttribute instanceof NewAttribute.ErrorAttribute) && !(newAttribute instanceof NewAttribute.PassAttribute) && !(newAttribute instanceof NewAttribute.StripAttribute)) {
                if (newAttribute.isContextClass()) {
                    hashMap.put(newAttribute.type, newAttribute.getLayout());
                }
                if (newAttribute.isContextMethod()) {
                    hashMap2.put(newAttribute.type, newAttribute.getLayout());
                }
                if (newAttribute.isContextField()) {
                    hashMap3.put(newAttribute.type, newAttribute.getLayout());
                }
                if (newAttribute.isContextCode()) {
                    hashMap4.put(newAttribute.type, newAttribute.getLayout());
                }
            }
        }
        if (hashMap.size() > 7) {
            this.segmentHeader.setHave_class_flags_hi(true);
        }
        if (hashMap2.size() > 6) {
            this.segmentHeader.setHave_method_flags_hi(true);
        }
        if (hashMap3.size() > 10) {
            this.segmentHeader.setHave_field_flags_hi(true);
        }
        if (hashMap4.size() > 15) {
            this.segmentHeader.setHave_code_flags_hi(true);
        }
        int[] iArr = {25, 26, 27, 28, 29, 30, 31};
        m66861m(hashMap, hashMap.size() > 7 ? m66862n(iArr) : iArr, 0);
        int[] iArr2 = {26, 27, 28, 29, 30, 31};
        m66861m(hashMap2, this.f106417f.size() > 6 ? m66862n(iArr2) : iArr2, 2);
        int[] iArr3 = {18, 23, 24, 25, 26, 27, 28, 29, 30, 31};
        m66861m(hashMap3, this.f106418g.size() > 10 ? m66862n(iArr3) : iArr3, 1);
        int[] iArr4 = {17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};
        m66861m(hashMap4, this.f106419h.size() > 15 ? m66862n(iArr4) : iArr4, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m66860p(int[] iArr, int i, String str, String str2) {
        AttributeDefinition attributeDefinition = new AttributeDefinition(iArr[0], i, this.f106421j.getCPUtf8(str), this.f106421j.getCPUtf8(str2));
        this.f106420i.add(attributeDefinition);
        if (i == 0) {
            this.f106416e.add(attributeDefinition);
            return;
        }
        if (i == 1) {
            this.f106418g.add(attributeDefinition);
        } else if (i == 2) {
            this.f106417f.add(attributeDefinition);
        } else {
            if (i != 3) {
                return;
            }
            this.f106419h.add(attributeDefinition);
        }
    }

    public void finaliseBands() {
        m66863o();
        this.segmentHeader.setAttribute_definition_count(this.f106420i.size());
    }

    public List<AttributeDefinition> getClassAttributeLayouts() {
        return this.f106416e;
    }

    public List<AttributeDefinition> getCodeAttributeLayouts() {
        return this.f106419h;
    }

    public List<AttributeDefinition> getFieldAttributeLayouts() {
        return this.f106418g;
    }

    public List<AttributeDefinition> getMethodAttributeLayouts() {
        return this.f106417f;
    }

    /* renamed from: m */
    public final void m66861m(Map<String, String> map, final int[] iArr, final int i) {
        map.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.zg
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                AttributeDefinitionBands.this.m66860p(iArr, i, (String) obj, (String) obj2);
            }
        });
    }

    /* renamed from: n */
    public final int[] m66862n(int[] iArr) {
        int i = 32;
        int length = iArr.length + 32;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        for (int length2 = iArr.length; length2 < length; length2++) {
            iArr2[length2] = i;
            i++;
        }
        return iArr2;
    }

    /* renamed from: o */
    public final void m66863o() {
        boolean isAnySyntheticClasses = this.f106422k.getClassBands().isAnySyntheticClasses();
        boolean isAnySyntheticMethods = this.f106422k.getClassBands().isAnySyntheticMethods();
        boolean isAnySyntheticFields = this.f106422k.getClassBands().isAnySyntheticFields();
        if (isAnySyntheticClasses || isAnySyntheticMethods || isAnySyntheticFields) {
            CPUTF8 cPUtf8 = this.f106421j.getCPUtf8("Synthetic");
            CPUTF8 cPUtf82 = this.f106421j.getCPUtf8("");
            if (isAnySyntheticClasses) {
                this.f106420i.add(new AttributeDefinition(12, 0, cPUtf8, cPUtf82));
            }
            if (isAnySyntheticMethods) {
                this.f106420i.add(new AttributeDefinition(12, 2, cPUtf8, cPUtf82));
            }
            if (isAnySyntheticFields) {
                this.f106420i.add(new AttributeDefinition(12, 1, cPUtf8, cPUtf82));
            }
        }
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing attribute definition bands...");
        int size = this.f106420i.size();
        int[] iArr = new int[size];
        int size2 = this.f106420i.size();
        int[] iArr2 = new int[size2];
        int size3 = this.f106420i.size();
        int[] iArr3 = new int[size3];
        for (int i = 0; i < size3; i++) {
            AttributeDefinition attributeDefinition = this.f106420i.get(i);
            iArr[i] = attributeDefinition.contextType | ((attributeDefinition.index + 1) << 2);
            iArr2[i] = attributeDefinition.name.getIndex();
            iArr3[i] = attributeDefinition.layout.getIndex();
        }
        byte[] encodeBandInt = encodeBandInt("attributeDefinitionHeader", iArr, Codec.BYTE1);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from attributeDefinitionHeader[" + size + IteratorUtils.f104924b);
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        byte[] encodeBandInt2 = encodeBandInt("attributeDefinitionName", iArr2, bHSDCodec);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from attributeDefinitionName[" + size2 + IteratorUtils.f104924b);
        byte[] encodeBandInt3 = encodeBandInt("attributeDefinitionLayout", iArr3, bHSDCodec);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from attributeDefinitionLayout[" + size3 + IteratorUtils.f104924b);
    }
}
