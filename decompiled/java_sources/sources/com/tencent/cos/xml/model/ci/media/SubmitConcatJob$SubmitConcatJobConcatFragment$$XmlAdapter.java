package com.tencent.cos.xml.model.ci.media;

import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.tencent.cos.xml.model.ci.media.SubmitConcatJob;
import com.tencent.qcloud.qcloudxml.core.ChildElementBinder;
import com.tencent.qcloud.qcloudxml.core.IXmlAdapter;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes10.dex */
public class SubmitConcatJob$SubmitConcatJobConcatFragment$$XmlAdapter extends IXmlAdapter<SubmitConcatJob.SubmitConcatJobConcatFragment> {
    private HashMap<String, ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatFragment>> childElementBinders;

    public SubmitConcatJob$SubmitConcatJobConcatFragment$$XmlAdapter() {
        HashMap<String, ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatFragment>> hashMap = new HashMap<>();
        this.childElementBinders = hashMap;
        hashMap.put(SsManifestParser.C4934e.f26671A, new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatFragment>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatFragment$$XmlAdapter.1
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatFragment submitConcatJobConcatFragment, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobConcatFragment.url = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("FragmentIndex", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatFragment>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatFragment$$XmlAdapter.2
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatFragment submitConcatJobConcatFragment, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobConcatFragment.fragmentIndex = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("StartTime", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatFragment>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatFragment$$XmlAdapter.3
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatFragment submitConcatJobConcatFragment, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobConcatFragment.startTime = xmlPullParser.getText();
            }
        });
        this.childElementBinders.put("EndTime", new ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatFragment>() { // from class: com.tencent.cos.xml.model.ci.media.SubmitConcatJob$SubmitConcatJobConcatFragment$$XmlAdapter.4
            @Override // com.tencent.qcloud.qcloudxml.core.ChildElementBinder
            public void fromXml(XmlPullParser xmlPullParser, SubmitConcatJob.SubmitConcatJobConcatFragment submitConcatJobConcatFragment, String str) throws IOException, XmlPullParserException {
                xmlPullParser.next();
                submitConcatJobConcatFragment.endTime = xmlPullParser.getText();
            }
        });
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public SubmitConcatJob.SubmitConcatJobConcatFragment fromXml(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        SubmitConcatJob.SubmitConcatJobConcatFragment submitConcatJobConcatFragment = new SubmitConcatJob.SubmitConcatJobConcatFragment();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2) {
                ChildElementBinder<SubmitConcatJob.SubmitConcatJobConcatFragment> childElementBinder = this.childElementBinders.get(xmlPullParser.getName());
                if (childElementBinder != null) {
                    childElementBinder.fromXml(xmlPullParser, submitConcatJobConcatFragment, null);
                }
            } else if (eventType == 3) {
                if ((str == null ? "ConcatFragment" : str).equalsIgnoreCase(xmlPullParser.getName())) {
                    return submitConcatJobConcatFragment;
                }
            } else {
                continue;
            }
            eventType = xmlPullParser.next();
        }
        return submitConcatJobConcatFragment;
    }

    @Override // com.tencent.qcloud.qcloudxml.core.IXmlAdapter
    public void toXml(XmlSerializer xmlSerializer, SubmitConcatJob.SubmitConcatJobConcatFragment submitConcatJobConcatFragment, String str) throws IOException, XmlPullParserException {
        if (submitConcatJobConcatFragment == null) {
            return;
        }
        if (str == null) {
            str = "ConcatFragment";
        }
        xmlSerializer.startTag("", str);
        if (submitConcatJobConcatFragment.url != null) {
            xmlSerializer.startTag("", SsManifestParser.C4934e.f26671A);
            xmlSerializer.text(String.valueOf(submitConcatJobConcatFragment.url));
            xmlSerializer.endTag("", SsManifestParser.C4934e.f26671A);
        }
        if (submitConcatJobConcatFragment.fragmentIndex != null) {
            xmlSerializer.startTag("", "FragmentIndex");
            xmlSerializer.text(String.valueOf(submitConcatJobConcatFragment.fragmentIndex));
            xmlSerializer.endTag("", "FragmentIndex");
        }
        if (submitConcatJobConcatFragment.startTime != null) {
            xmlSerializer.startTag("", "StartTime");
            xmlSerializer.text(String.valueOf(submitConcatJobConcatFragment.startTime));
            xmlSerializer.endTag("", "StartTime");
        }
        if (submitConcatJobConcatFragment.endTime != null) {
            xmlSerializer.startTag("", "EndTime");
            xmlSerializer.text(String.valueOf(submitConcatJobConcatFragment.endTime));
            xmlSerializer.endTag("", "EndTime");
        }
        xmlSerializer.endTag("", str);
    }
}
