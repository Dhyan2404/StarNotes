package com.onegravity.rteditor.api.format;

import com.onegravity.rteditor.api.RTMediaFactory;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.converter.ConverterHtmlToSpanned;
import com.onegravity.rteditor.converter.ConverterHtmlToText;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class RTHtml<I extends RTImage, A extends RTAudio, V extends RTVideo> extends RTText {

    /* renamed from: c */
    public List<I> f40135c;

    public RTHtml(CharSequence charSequence) {
        this(RTFormat.HTML, charSequence);
    }

    @Override // com.onegravity.rteditor.api.format.RTText
    public RTText convertTo(RTFormat rTFormat, RTMediaFactory<RTImage, RTAudio, RTVideo> rTMediaFactory) {
        return rTFormat instanceof RTFormat.PlainText ? ConverterHtmlToText.convert((RTHtml<? extends RTImage, ? extends RTAudio, ? extends RTVideo>) this) : rTFormat instanceof RTFormat.Spanned ? new ConverterHtmlToSpanned().convert(this, rTMediaFactory) : super.convertTo(rTFormat, rTMediaFactory);
    }

    public List<I> getImages() {
        return this.f40135c;
    }

    public RTHtml(RTFormat.Html html, CharSequence charSequence) {
        this(html, charSequence, new ArrayList());
    }

    @Override // com.onegravity.rteditor.api.format.RTText
    public String getText() {
        CharSequence text = super.getText();
        return text != null ? text.toString() : "";
    }

    public RTHtml(RTFormat.Html html, CharSequence charSequence, List<I> list) {
        super(html, charSequence);
        this.f40135c = list;
    }
}
