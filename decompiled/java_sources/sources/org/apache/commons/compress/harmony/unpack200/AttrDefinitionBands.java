package org.apache.commons.compress.harmony.unpack200;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.harmony.pack200.BHSDCodec;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.bytecode.AnnotationDefaultAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.CodeAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ConstantValueAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.DeprecatedAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.EnclosingMethodAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ExceptionsAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.InnerClassesAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LineNumberTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LocalVariableTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LocalVariableTypeTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.SignatureAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.SourceFileAttribute;

/* loaded from: classes12.dex */
public class AttrDefinitionBands extends BandSet {

    /* renamed from: a */
    public int[] f106820a;

    /* renamed from: b */
    public String[] f106821b;

    /* renamed from: c */
    public String[] f106822c;

    /* renamed from: d */
    public AttributeLayoutMap f106823d;

    /* renamed from: e */
    public final String[] f106824e;

    public AttrDefinitionBands(Segment segment) {
        super(segment);
        this.f106824e = segment.getCpBands().getCpUTF8();
    }

    /* renamed from: c */
    public final void m67013c() {
        AnnotationDefaultAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_ANNOTATION_DEFAULT));
        CodeAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_CODE));
        ConstantValueAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_CONSTANT_VALUE));
        DeprecatedAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_DEPRECATED));
        EnclosingMethodAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_ENCLOSING_METHOD));
        ExceptionsAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_EXCEPTIONS));
        InnerClassesAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_INNER_CLASSES));
        LineNumberTableAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_LINE_NUMBER_TABLE));
        LocalVariableTableAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TABLE));
        LocalVariableTypeTableAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TYPE_TABLE));
        SignatureAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value("Signature"));
        SourceFileAttribute.setAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_SOURCE_FILE));
        MetadataBandGroup.setRvaAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS));
        MetadataBandGroup.setRiaAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS));
        MetadataBandGroup.setRvpaAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS));
        MetadataBandGroup.setRipaAttributeName(this.segment.getCpBands().cpUTF8Value(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS));
    }

    public AttributeLayoutMap getAttributeDefinitionMap() {
        return this.f106823d;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void read(InputStream inputStream) throws IOException, Pack200Exception {
        int i;
        int attributeDefinitionCount = this.header.getAttributeDefinitionCount();
        this.f106820a = decodeBandInt("attr_definition_headers", inputStream, Codec.BYTE1, attributeDefinitionCount);
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        this.f106822c = parseReferences("attr_definition_name", inputStream, bHSDCodec, attributeDefinitionCount, this.f106824e);
        this.f106821b = parseReferences("attr_definition_layout", inputStream, bHSDCodec, attributeDefinitionCount, this.f106824e);
        this.f106823d = new AttributeLayoutMap();
        int i2 = this.segment.getSegmentHeader().getOptions().hasClassFlagsHi() ? 63 : 32;
        for (int i3 = 0; i3 < attributeDefinitionCount; i3++) {
            int i4 = this.f106820a[i3];
            int i5 = i4 & 3;
            int i6 = (i4 >> 2) - 1;
            if (i6 == -1) {
                i = i2;
                i2++;
            } else {
                i = i6;
            }
            AttributeLayout attributeLayout = new AttributeLayout(this.f106822c[i3], i5, this.f106821b[i3], i, false);
            this.f106823d.add(attributeLayout, new NewAttributeBands(this.segment, attributeLayout));
        }
        this.f106823d.checkMap();
        m67013c();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() throws Pack200Exception, IOException {
    }
}
