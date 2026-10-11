package org.apache.commons.codec.language.bm;

import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public class BeiderMorseEncoder implements StringEncoder {

    /* renamed from: a */
    public PhoneticEngine f104811a = new PhoneticEngine(NameType.GENERIC, RuleType.APPROX, true);

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("BeiderMorseEncoder encode parameter is not of type String");
    }

    public NameType getNameType() {
        return this.f104811a.getNameType();
    }

    public RuleType getRuleType() {
        return this.f104811a.getRuleType();
    }

    public boolean isConcat() {
        return this.f104811a.isConcat();
    }

    public void setConcat(boolean z) {
        this.f104811a = new PhoneticEngine(this.f104811a.getNameType(), this.f104811a.getRuleType(), z, this.f104811a.getMaxPhonemes());
    }

    public void setMaxPhonemes(int i) {
        this.f104811a = new PhoneticEngine(this.f104811a.getNameType(), this.f104811a.getRuleType(), this.f104811a.isConcat(), i);
    }

    public void setNameType(NameType nameType) {
        this.f104811a = new PhoneticEngine(nameType, this.f104811a.getRuleType(), this.f104811a.isConcat(), this.f104811a.getMaxPhonemes());
    }

    public void setRuleType(RuleType ruleType) {
        this.f104811a = new PhoneticEngine(this.f104811a.getNameType(), ruleType, this.f104811a.isConcat(), this.f104811a.getMaxPhonemes());
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) throws EncoderException {
        if (str == null) {
            return null;
        }
        return this.f104811a.encode(str);
    }
}
