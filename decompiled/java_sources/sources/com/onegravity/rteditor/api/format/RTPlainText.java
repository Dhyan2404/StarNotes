package com.onegravity.rteditor.api.format;

import android.text.SpannedString;
import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.converter.ConverterTextToHtml;

/* loaded from: classes7.dex */
public final class RTPlainText extends RTText {
    public RTPlainText(CharSequence charSequence) {
        super(RTFormat.PLAIN_TEXT, charSequence);
    }

    @Override // com.onegravity.rteditor.api.format.RTText
    public RTText convertTo(RTFormat rTFormat, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory) {
        return rTFormat instanceof RTFormat.Html ? ConverterTextToHtml.convert(this) : rTFormat instanceof RTFormat.Spanned ? new RTSpanned(new SpannedString(getText())) : super.convertTo(rTFormat, rTMediaFactory);
    }

    @Override // com.onegravity.rteditor.api.format.RTText
    public String getText() {
        CharSequence text = super.getText();
        return text != null ? text.toString() : "";
    }
}
