package com.tencent.cos.xml.model.tag.eventstreaming;

import android.util.Xml;
import androidx.core.app.NotificationCompat;
import com.google.android.material.motion.MotionUtils;
import com.tencent.cos.xml.exception.CosXmlServiceException;
import com.tencent.cos.xml.model.tag.eventstreaming.SelectObjectContentEvent;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes10.dex */
public abstract class SelectObjectContentEventUnmarshaller {

    /* loaded from: classes10.dex */
    public static class ContinuationEventUnmarshaller extends SelectObjectContentEventUnmarshaller {
        @Override // com.tencent.cos.xml.model.tag.eventstreaming.SelectObjectContentEventUnmarshaller
        public SelectObjectContentEvent.ContinuationEvent unmarshal(Message message) {
            return new SelectObjectContentEvent.ContinuationEvent();
        }
    }

    /* loaded from: classes10.dex */
    public static class EndEventUnmarshaller extends SelectObjectContentEventUnmarshaller {
        @Override // com.tencent.cos.xml.model.tag.eventstreaming.SelectObjectContentEventUnmarshaller
        public SelectObjectContentEvent.EndEvent unmarshal(Message message) {
            return new SelectObjectContentEvent.EndEvent();
        }
    }

    /* loaded from: classes10.dex */
    public static class ProgressEventUnmarshaller extends SelectObjectContentEventUnmarshaller {
        @Override // com.tencent.cos.xml.model.tag.eventstreaming.SelectObjectContentEventUnmarshaller
        public SelectObjectContentEvent.ProgressEvent unmarshal(Message message) throws Exception {
            return new SelectObjectContentEvent.ProgressEvent().withDetails(SelectObjectContentEventUnmarshaller.parsePayloadProgress(message));
        }
    }

    /* loaded from: classes10.dex */
    public static class RecordsEventUnmarshaller extends SelectObjectContentEventUnmarshaller {
        @Override // com.tencent.cos.xml.model.tag.eventstreaming.SelectObjectContentEventUnmarshaller
        public SelectObjectContentEvent.RecordsEvent unmarshal(Message message) {
            return new SelectObjectContentEvent.RecordsEvent().withPayload(ByteBuffer.wrap(message.getPayload()));
        }
    }

    /* loaded from: classes10.dex */
    public static class StatsEventUnmarshaller extends SelectObjectContentEventUnmarshaller {
        @Override // com.tencent.cos.xml.model.tag.eventstreaming.SelectObjectContentEventUnmarshaller
        public SelectObjectContentEvent.StatsEvent unmarshal(Message message) throws Exception {
            return new SelectObjectContentEvent.StatsEvent().withDetails(SelectObjectContentEventUnmarshaller.parsePayloadStats(message));
        }
    }

    /* loaded from: classes10.dex */
    public static class UnknownEventUnmarshaller extends SelectObjectContentEventUnmarshaller {
        @Override // com.tencent.cos.xml.model.tag.eventstreaming.SelectObjectContentEventUnmarshaller
        public SelectObjectContentEvent unmarshal(Message message) {
            return new SelectObjectContentEvent();
        }
    }

    public static SelectObjectContentEventUnmarshaller forEventType(String str) {
        return "Records".equals(str) ? new RecordsEventUnmarshaller() : "Stats".equals(str) ? new StatsEventUnmarshaller() : "Progress".equals(str) ? new ProgressEventUnmarshaller() : "Cont".equals(str) ? new ContinuationEventUnmarshaller() : "End".equals(str) ? new EndEventUnmarshaller() : new UnknownEventUnmarshaller();
    }

    private static String getStringHeader(Message message, String str) throws CosXmlServiceException {
        HeaderValue headerValue = message.getHeaders().get(str);
        if (headerValue == null) {
            throw new CosXmlServiceException("Unexpected lack of '" + str + "' header from service.");
        }
        if (headerValue.getType() == HeaderType.STRING) {
            return headerValue.getString();
        }
        throw new CosXmlServiceException("Unexpected non-string '" + str + "' header: " + headerValue.getType());
    }

    private static long[] parsePayloadBytesProgress(Message message) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(new ByteArrayInputStream(message.getPayload()), "UTF-8");
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equalsIgnoreCase("BytesScanned")) {
                    newPullParser.next();
                    j = Long.parseLong(newPullParser.getText());
                } else if (name.equalsIgnoreCase("BytesProcessed")) {
                    newPullParser.next();
                    j2 = Long.parseLong(newPullParser.getText());
                } else if (name.equalsIgnoreCase("BytesReturned")) {
                    newPullParser.next();
                    j3 = Long.parseLong(newPullParser.getText());
                }
            }
        }
        return new long[]{j, j2, j3};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Progress parsePayloadProgress(Message message) throws XmlPullParserException, IOException {
        long[] parsePayloadBytesProgress = parsePayloadBytesProgress(message);
        return new Progress(Long.valueOf(parsePayloadBytesProgress[0]), Long.valueOf(parsePayloadBytesProgress[1]), Long.valueOf(parsePayloadBytesProgress[2]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Stats parsePayloadStats(Message message) throws XmlPullParserException, IOException {
        long[] parsePayloadBytesProgress = parsePayloadBytesProgress(message);
        return new Stats(Long.valueOf(parsePayloadBytesProgress[0]), Long.valueOf(parsePayloadBytesProgress[1]), Long.valueOf(parsePayloadBytesProgress[2]));
    }

    private static CosXmlServiceException unmarshalErrorMessage(Message message) throws CosXmlServiceException {
        String stringHeader = getStringHeader(message, ":error-code");
        String stringHeader2 = getStringHeader(message, ":error-message");
        SelectObjectContentEventException selectObjectContentEventException = new SelectObjectContentEventException("S3 returned an error: " + stringHeader2 + " (" + stringHeader + MotionUtils.f31762d);
        selectObjectContentEventException.setErrorCode(stringHeader);
        selectObjectContentEventException.setErrorMessage(stringHeader2);
        return new CosXmlServiceException("Select object content error event", selectObjectContentEventException);
    }

    private static SelectObjectContentEvent unmarshalEventMessage(Message message) throws CosXmlServiceException {
        String stringHeader = getStringHeader(message, ":event-type");
        try {
            return forEventType(stringHeader).unmarshal(message);
        } catch (Exception e) {
            throw new CosXmlServiceException("Failed to read response event of type " + stringHeader, e);
        }
    }

    public static SelectObjectContentEvent unmarshalMessage(Message message) throws CosXmlServiceException {
        String stringHeader = getStringHeader(message, ":message-type");
        if ("error".equals(stringHeader)) {
            throw unmarshalErrorMessage(message);
        }
        if (NotificationCompat.CATEGORY_EVENT.equals(stringHeader)) {
            return unmarshalEventMessage(message);
        }
        throw new CosXmlServiceException("Service returned unknown message type: " + stringHeader);
    }

    public abstract SelectObjectContentEvent unmarshal(Message message) throws Exception;
}
