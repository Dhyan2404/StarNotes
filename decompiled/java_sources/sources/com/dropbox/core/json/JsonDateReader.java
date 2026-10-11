package com.dropbox.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* loaded from: classes4.dex */
public class JsonDateReader {
    public static final JsonReader<Date> Dropbox = new C2277a();
    public static final TimeZone UTC = TimeZone.getTimeZone("UTC");
    public static final JsonReader<Date> DropboxV2 = new C2278b();

    /* renamed from: com.dropbox.core.json.JsonDateReader$a */
    /* loaded from: classes4.dex */
    public static class C2277a extends JsonReader<Date> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Date read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation currentLocation = jsonParser.getCurrentLocation();
            try {
                Date parseDropboxDate = JsonDateReader.parseDropboxDate(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                jsonParser.nextToken();
                return parseDropboxDate;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            } catch (ParseException e2) {
                throw new JsonReadException("bad date: \"" + e2.getMessage() + " at offset " + e2.getErrorOffset(), currentLocation);
            }
        }
    }

    /* renamed from: com.dropbox.core.json.JsonDateReader$b */
    /* loaded from: classes4.dex */
    public static class C2278b extends JsonReader<Date> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Date read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation currentLocation = jsonParser.getCurrentLocation();
            try {
                Date parseDropbox8601Date = JsonDateReader.parseDropbox8601Date(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                jsonParser.nextToken();
                return parseDropbox8601Date;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            } catch (ParseException e2) {
                throw new JsonReadException("bad date: \"" + e2.getMessage() + " at offset " + e2.getErrorOffset(), currentLocation);
            }
        }
    }

    /* renamed from: a */
    public static boolean m10074a(char c) {
        return c >= '0' && c <= '9';
    }

    public static int getMonthIndex(char c, char c2, char c3) {
        if (c == 'A') {
            if ((c2 == 'p') && (c3 == 'r')) {
                return 3;
            }
            return (c2 == 'u') & (c3 == 'g') ? 7 : -1;
        }
        if (c == 'D') {
            return (c2 == 'e') & (c3 == 'c') ? 11 : -1;
        }
        if (c == 'F') {
            return (c2 == 'e') & (c3 == 'b') ? 1 : 0;
        }
        if (c == 'J') {
            if ((c2 == 'a') && (c3 == 'n')) {
                return 0;
            }
            if (c2 == 'u') {
                if (c3 == 'n') {
                    return 5;
                }
                if (c3 == 'l') {
                    return 6;
                }
            }
            return -1;
        }
        if (c == 'S') {
            return (c2 == 'e') & (c3 == 'p') ? 8 : -1;
        }
        switch (c) {
            case 'M':
                if (c2 == 'a') {
                    if (c3 == 'r') {
                        return 2;
                    }
                    if (c3 == 'y') {
                        return 4;
                    }
                }
                return -1;
            case 'N':
                return (c2 == 'o') & (c3 == 'v') ? 10 : -1;
            case 'O':
                return (c2 == 'c') & (c3 == 't') ? 9 : -1;
            default:
                return -1;
        }
    }

    public static boolean isValidDayOfWeek(char c, char c2, char c3) {
        if (c == 'F') {
            return (c2 == 'r') & (c3 == 'i');
        }
        if (c == 'M') {
            return (c2 == 'o') & (c3 == 'n');
        }
        if (c == 'W') {
            return (c2 == 'e') & (c3 == 'd');
        }
        if (c == 'S') {
            if ((c2 == 'u') && (c3 == 'n')) {
                return true;
            }
            return (c2 == 'a') & (c3 == 't');
        }
        if (c != 'T') {
            return false;
        }
        if ((c2 == 'u') && (c3 == 'e')) {
            return true;
        }
        return (c2 == 'h') & (c3 == 'u');
    }

    public static Date parseDropbox8601Date(char[] cArr, int i, int i2) throws ParseException {
        if (i2 != 20 && i2 != 24) {
            throw new ParseException("expecting date to be 20 or 24 characters, got " + i2, 0);
        }
        String str = new String(cArr, i, i2);
        SimpleDateFormat simpleDateFormat = i2 == 20 ? new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'") : new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            Date parse = simpleDateFormat.parse(str);
            if (parse != null) {
                return parse;
            }
            throw new ParseException("invalid date" + str, 0);
        } catch (IllegalArgumentException unused) {
            throw new ParseException("invalid characters in date" + str, 0);
        }
    }

    public static Date parseDropboxDate(char[] cArr, int i, int i2) throws ParseException {
        if (i2 != 31) {
            throw new ParseException("expecting date to be 31 characters, got " + i2, 0);
        }
        if (cArr.length < i + 31 || i < 0) {
            throw new IllegalArgumentException("range is not within 'b'");
        }
        char c = cArr[i + 3];
        boolean z = c != ',';
        char c2 = cArr[i + 4];
        boolean z2 = z | (c2 != ' ');
        char c3 = cArr[i + 7];
        boolean z3 = z2 | (c3 != ' ');
        char c4 = cArr[i + 11];
        boolean z4 = z3 | (c4 != ' ');
        char c5 = cArr[i + 16];
        boolean z5 = z4 | (c5 != ' ');
        char c6 = cArr[i + 19];
        boolean z6 = z5 | (c6 != ':');
        char c7 = cArr[i + 22];
        boolean z7 = z6 | (c7 != ':');
        char c8 = cArr[i + 25];
        boolean z8 = z7 | (c8 != ' ');
        char c9 = cArr[i + 26];
        boolean z9 = z8 | (c9 != '+');
        char c10 = cArr[i + 27];
        boolean z10 = z9 | (c10 != '0');
        char c11 = cArr[i + 28];
        boolean z11 = z10 | (c11 != '0');
        char c12 = cArr[i + 29];
        boolean z12 = z11 | (c12 != '0');
        char c13 = cArr[i + 30];
        if (z12 || (c13 != '0')) {
            if (c != ',') {
                throw new ParseException("expecting ','", 3);
            }
            if (c2 != ' ') {
                throw new ParseException("expecting ' '", 4);
            }
            if (c3 != ' ') {
                throw new ParseException("expecting ' '", 7);
            }
            if (c4 != ' ') {
                throw new ParseException("expecting ' '", 11);
            }
            if (c5 != ' ') {
                throw new ParseException("expecting ' '", 16);
            }
            if (c6 != ':') {
                throw new ParseException("expecting ':'", 19);
            }
            if (c7 != ':') {
                throw new ParseException("expecting ':'", 22);
            }
            if (c8 != ' ') {
                throw new ParseException("expecting ' '", 25);
            }
            if (c9 != '+') {
                throw new ParseException("expecting '+'", 26);
            }
            if (c10 != '0') {
                throw new ParseException("expecting '0'", 27);
            }
            if (c11 != '0') {
                throw new ParseException("expecting '0'", 28);
            }
            if (c12 != '0') {
                throw new ParseException("expecting '0'", 29);
            }
            if (c13 != '0') {
                throw new ParseException("expecting '0'", 30);
            }
            throw new AssertionError("unreachable");
        }
        if (!isValidDayOfWeek(cArr[i], cArr[i + 1], cArr[i + 2])) {
            throw new ParseException("invalid day of week", i);
        }
        int monthIndex = getMonthIndex(cArr[i + 8], cArr[i + 9], cArr[i + 10]);
        if (monthIndex == -1) {
            throw new ParseException("invalid month", 8);
        }
        char c14 = cArr[i + 5];
        char c15 = cArr[i + 6];
        if (!m10074a(c14) || !m10074a(c15)) {
            throw new ParseException("invalid day of month", 5);
        }
        int i3 = ((c14 * '\n') + c15) - 528;
        char c16 = cArr[i + 12];
        char c17 = cArr[i + 13];
        char c18 = cArr[i + 14];
        char c19 = cArr[i + 15];
        if (((!m10074a(c16)) | (!m10074a(c17)) | (!m10074a(c18))) || (!m10074a(c19))) {
            throw new ParseException("invalid year", 12);
        }
        int i4 = ((((c16 * 1000) + (c17 * 'd')) + (c18 * '\n')) + c19) - 53328;
        char c20 = cArr[i + 17];
        char c21 = cArr[i + 18];
        if ((!m10074a(c20)) || (!m10074a(c21))) {
            throw new ParseException("invalid hour", 17);
        }
        int i5 = ((c20 * '\n') + c21) - 528;
        char c22 = cArr[i + 20];
        char c23 = cArr[i + 21];
        if ((!m10074a(c22)) || (!m10074a(c23))) {
            throw new ParseException("invalid minute", 20);
        }
        int i6 = ((c22 * '\n') + c23) - 528;
        char c24 = cArr[i + 23];
        if ((!m10074a(c24)) || (true ^ m10074a(cArr[i + 24]))) {
            throw new ParseException("invalid second", 23);
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(i4, monthIndex, i3, i5, i6, ((c24 * '\n') + r0) - 528);
        gregorianCalendar.setTimeZone(UTC);
        return gregorianCalendar.getTime();
    }
}
