package org.apache.xmlbeans.impl.validator;

import java.math.BigDecimal;
import java.util.List;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import org.apache.xmlbeans.GDate;
import org.apache.xmlbeans.GDuration;
import org.apache.xmlbeans.SchemaAttributeModel;
import org.apache.xmlbeans.SchemaLocalAttribute;
import org.apache.xmlbeans.SchemaLocalElement;
import org.apache.xmlbeans.SchemaParticle;
import org.apache.xmlbeans.SchemaType;

/* loaded from: classes13.dex */
public class ValidatingInfoXMLStreamReader extends ValidatingXMLStreamReader implements XMLStreamReader {
    private int _attCount = -1;
    private int _attIndex = 0;

    public boolean getBooleanValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return false;
        }
        return validator.getBooleanValue();
    }

    public byte[] getByteArrayValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getByteArrayValue();
    }

    public SchemaLocalAttribute getCurrentAttribute() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getCurrentAttribute();
    }

    public SchemaLocalElement getCurrentElement() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getCurrentElement();
    }

    public SchemaType getCurrentElementSchemaType() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getCurrentElementSchemaType();
    }

    public SchemaAttributeModel getCurrentWildcardAttribute() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getCurrentWildcardAttribute();
    }

    public SchemaParticle getCurrentWildcardElement() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getCurrentWildcardElement();
    }

    public BigDecimal getDecimalValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getDecimalValue();
    }

    public double getDoubleValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return 0.0d;
        }
        return validator.getDoubleValue();
    }

    public float getFloatValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return 0.0f;
        }
        return validator.getFloatValue();
    }

    public GDate getGDateValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getGDateValue();
    }

    public GDuration getGDurationValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getGDurationValue();
    }

    public List<SchemaType> getListTypes() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getListTypes();
    }

    public List<?> getListValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getListValue();
    }

    public QName getQNameValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getQNameValue();
    }

    public String getStringValue() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getStringValue();
    }

    public SchemaType getUnionType() {
        Validator validator = this._validator;
        if (validator == null) {
            return null;
        }
        return validator.getUnionType();
    }

    public int nextWithAttributes() throws XMLStreamException {
        int i = this._attIndex;
        if (i >= this._attCount) {
            return next();
        }
        validate_attribute(i);
        this._attIndex++;
        return 10;
    }

    @Override // org.apache.xmlbeans.impl.validator.ValidatingXMLStreamReader
    public void validate_attributes(int i) {
        this._attCount = i;
        this._attIndex = 0;
    }
}
