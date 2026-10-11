package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse$PostSoundHoundResponseSongList$$XmlAdapter */
/* loaded from: classes10.dex */
public class C15257x77bd892f extends IXmlAdapter<PostSoundHoundResponse.PostSoundHoundResponseSongList> {
    private HashMap<String, ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseSongList>> childElementBinders;

    public C15257x77bd892f() {
        HashMap<String, ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseSongList>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put("Inlier", new ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseSongList>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse$PostSoundHoundResponseSongList$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSoundHoundResponse.PostSoundHoundResponseSongList postSoundHoundResponseSongList, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSoundHoundResponseSongList.inlier = Integer.parseInt(xmlPullParser.getText());
            }
        });
        this.childElementBinders.put("SingerName", new ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseSongList>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse$PostSoundHoundResponseSongList$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSoundHoundResponse.PostSoundHoundResponseSongList postSoundHoundResponseSongList, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSoundHoundResponseSongList.singerName = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("SongName", new ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseSongList>() { // from class: com.tencent.cos.xml.model.ci.ai.PostSoundHoundResponse$PostSoundHoundResponseSongList$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, PostSoundHoundResponse.PostSoundHoundResponseSongList postSoundHoundResponseSongList, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                postSoundHoundResponseSongList.songName = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public PostSoundHoundResponse.PostSoundHoundResponseSongList fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        PostSoundHoundResponse.PostSoundHoundResponseSongList postSoundHoundResponseSongList = new PostSoundHoundResponse.PostSoundHoundResponseSongList();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<PostSoundHoundResponse.PostSoundHoundResponseSongList> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, postSoundHoundResponseSongList, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "SongList" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return postSoundHoundResponseSongList;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return postSoundHoundResponseSongList;
    }
}
