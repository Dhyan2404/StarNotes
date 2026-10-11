package com.tencent.cos.xml.model.bucket;

import com.tencent.cos.xml.model.CosXmlResult;
import com.tencent.cos.xml.model.tag.LocationConstraint;
import com.tencent.cos.xml.transfer.XmlParser;
import com.tencent.qcloud.core.http.HttpResponse;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public final class GetBucketLocationResult extends CosXmlResult {
    public LocationConstraint locationConstraint = new LocationConstraint();

    @Override // com.tencent.cos.xml.model.CosXmlResult
    public String printResult() {
        LocationConstraint locationConstraint = this.locationConstraint;
        return locationConstraint != null ? locationConstraint.toString() : super.printResult();
    }

    @Override // com.tencent.cos.xml.model.CosXmlResult
    public void xmlParser(HttpResponse httpResponse) throws XmlPullParserException, IOException {
        XmlParser.parseLocationConstraint(httpResponse.byteStream(), this.locationConstraint);
    }
}
