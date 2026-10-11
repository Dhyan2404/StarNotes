package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.account.PhotoSourceArg;
import com.dropbox.core.p006v2.team.UserSelectorArg;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.event.StatisticsStoolbarPageAdd;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.dropbox.core.v2.team.g0 */
/* loaded from: classes4.dex */
public class C3289g0 {

    /* renamed from: a */
    public final UserSelectorArg f18610a;

    /* renamed from: b */
    public final PhotoSourceArg f18611b;

    /* renamed from: com.dropbox.core.v2.team.g0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3289g0> {

        /* renamed from: b */
        public static final a f18612b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3289g0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            UserSelectorArg userSelectorArg = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PhotoSourceArg photoSourceArg = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if (StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO.equals(currentName)) {
                    photoSourceArg = PhotoSourceArg.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            if (photoSourceArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"photo\" missing.");
            }
            C3289g0 c3289g0 = new C3289g0(userSelectorArg, photoSourceArg);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3289g0, c3289g0.m12875c());
            return c3289g0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3289g0 c3289g0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(c3289g0.f18610a, jsonGenerator);
            jsonGenerator.writeFieldName(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO);
            PhotoSourceArg.Serializer.INSTANCE.serialize(c3289g0.f18611b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3289g0(UserSelectorArg userSelectorArg, PhotoSourceArg photoSourceArg) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.f18610a = userSelectorArg;
        if (photoSourceArg == null) {
            throw new IllegalArgumentException("Required value for 'photo' is null");
        }
        this.f18611b = photoSourceArg;
    }

    /* renamed from: a */
    public PhotoSourceArg m12873a() {
        return this.f18611b;
    }

    /* renamed from: b */
    public UserSelectorArg m12874b() {
        return this.f18610a;
    }

    /* renamed from: c */
    public String m12875c() {
        return a.f18612b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        PhotoSourceArg photoSourceArg;
        PhotoSourceArg photoSourceArg2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3289g0 c3289g0 = (C3289g0) obj;
        UserSelectorArg userSelectorArg = this.f18610a;
        UserSelectorArg userSelectorArg2 = c3289g0.f18610a;
        return (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && ((photoSourceArg = this.f18611b) == (photoSourceArg2 = c3289g0.f18611b) || photoSourceArg.equals(photoSourceArg2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18610a, this.f18611b});
    }

    public String toString() {
        return a.f18612b.serialize((a) this, false);
    }
}
