package com.vdurmont.emoji;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class EmojiLoader {
    /* renamed from: a */
    public static String m60827a(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                return sb.toString();
            }
            sb.append(readLine);
        }
    }

    /* renamed from: b */
    public static List<String> m60828b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    public static Emoji buildEmojiFromJSON(JSONObject jSONObject) throws UnsupportedEncodingException {
        if (!jSONObject.has("emoji")) {
            return null;
        }
        return new Emoji(jSONObject.has("description") ? jSONObject.getString("description") : null, jSONObject.has("supports_fitzpatrick") ? jSONObject.getBoolean("supports_fitzpatrick") : false, m60828b(jSONObject.getJSONArray("aliases")), m60828b(jSONObject.getJSONArray("tags")), jSONObject.getString("emoji").getBytes("UTF-8"));
    }

    public static List<Emoji> loadEmojis(InputStream inputStream) throws IOException {
        JSONArray jSONArray = new JSONArray(m60827a(inputStream));
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            Emoji buildEmojiFromJSON = buildEmojiFromJSON(jSONArray.getJSONObject(i));
            if (buildEmojiFromJSON != null) {
                arrayList.add(buildEmojiFromJSON);
            }
        }
        return arrayList;
    }
}
