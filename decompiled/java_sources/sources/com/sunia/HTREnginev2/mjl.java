package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class mjl implements zin<CharSequence> {
    @Override // com.sunia.HTREnginev2.zin
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public CharSequence[] mo55645a(CharSequence charSequence) {
        Validate.isTrue(StringUtils.isNotBlank(charSequence), "Invalid text", new Object[0]);
        Matcher matcher = Pattern.compile("(\\w)+").matcher(charSequence.toString());
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(matcher.group(0));
        }
        return (CharSequence[]) arrayList.toArray(new String[0]);
    }
}
