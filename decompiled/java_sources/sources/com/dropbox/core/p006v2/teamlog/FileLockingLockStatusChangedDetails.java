package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.LockStatus;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class FileLockingLockStatusChangedDetails {
    protected final LockStatus newValue;
    protected final LockStatus previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.FileLockingLockStatusChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3562a extends StructSerializer<FileLockingLockStatusChangedDetails> {

        /* renamed from: b */
        public static final C3562a f19821b = new C3562a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileLockingLockStatusChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            LockStatus lockStatus = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            LockStatus lockStatus2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    lockStatus = LockStatus.C3718b.f19991b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    lockStatus2 = LockStatus.C3718b.f19991b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (lockStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (lockStatus2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            FileLockingLockStatusChangedDetails fileLockingLockStatusChangedDetails = new FileLockingLockStatusChangedDetails(lockStatus, lockStatus2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileLockingLockStatusChangedDetails, fileLockingLockStatusChangedDetails.toStringMultiline());
            return fileLockingLockStatusChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileLockingLockStatusChangedDetails fileLockingLockStatusChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            LockStatus.C3718b c3718b = LockStatus.C3718b.f19991b;
            c3718b.serialize(fileLockingLockStatusChangedDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c3718b.serialize(fileLockingLockStatusChangedDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileLockingLockStatusChangedDetails(LockStatus lockStatus, LockStatus lockStatus2) {
        if (lockStatus == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = lockStatus;
        if (lockStatus2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = lockStatus2;
    }

    public boolean equals(Object obj) {
        LockStatus lockStatus;
        LockStatus lockStatus2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileLockingLockStatusChangedDetails fileLockingLockStatusChangedDetails = (FileLockingLockStatusChangedDetails) obj;
        LockStatus lockStatus3 = this.previousValue;
        LockStatus lockStatus4 = fileLockingLockStatusChangedDetails.previousValue;
        return (lockStatus3 == lockStatus4 || lockStatus3.equals(lockStatus4)) && ((lockStatus = this.newValue) == (lockStatus2 = fileLockingLockStatusChangedDetails.newValue) || lockStatus.equals(lockStatus2));
    }

    public LockStatus getNewValue() {
        return this.newValue;
    }

    public LockStatus getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C3562a.f19821b.serialize((C3562a) this, false);
    }

    public String toStringMultiline() {
        return C3562a.f19821b.serialize((C3562a) this, true);
    }
}
