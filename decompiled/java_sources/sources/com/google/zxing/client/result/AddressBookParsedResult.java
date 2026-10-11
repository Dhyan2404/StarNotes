package com.google.zxing.client.result;

/* loaded from: classes4.dex */
public final class AddressBookParsedResult extends ParsedResult {

    /* renamed from: b */
    public final String[] f38265b;

    /* renamed from: c */
    public final String[] f38266c;

    /* renamed from: d */
    public final String f38267d;

    /* renamed from: e */
    public final String[] f38268e;

    /* renamed from: f */
    public final String[] f38269f;

    /* renamed from: g */
    public final String[] f38270g;

    /* renamed from: h */
    public final String[] f38271h;

    /* renamed from: i */
    public final String f38272i;

    /* renamed from: j */
    public final String f38273j;

    /* renamed from: k */
    public final String[] f38274k;

    /* renamed from: l */
    public final String[] f38275l;

    /* renamed from: m */
    public final String f38276m;

    /* renamed from: n */
    public final String f38277n;

    /* renamed from: o */
    public final String f38278o;

    /* renamed from: p */
    public final String[] f38279p;

    /* renamed from: q */
    public final String[] f38280q;

    public AddressBookParsedResult(String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String[] strArr7) {
        this(strArr, null, null, strArr2, strArr3, strArr4, strArr5, null, null, strArr6, strArr7, null, null, null, null, null);
    }

    public String[] getAddressTypes() {
        return this.f38275l;
    }

    public String[] getAddresses() {
        return this.f38274k;
    }

    public String getBirthday() {
        return this.f38277n;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.f38265b, sb);
        ParsedResult.maybeAppend(this.f38266c, sb);
        ParsedResult.maybeAppend(this.f38267d, sb);
        ParsedResult.maybeAppend(this.f38278o, sb);
        ParsedResult.maybeAppend(this.f38276m, sb);
        ParsedResult.maybeAppend(this.f38274k, sb);
        ParsedResult.maybeAppend(this.f38268e, sb);
        ParsedResult.maybeAppend(this.f38270g, sb);
        ParsedResult.maybeAppend(this.f38272i, sb);
        ParsedResult.maybeAppend(this.f38279p, sb);
        ParsedResult.maybeAppend(this.f38277n, sb);
        ParsedResult.maybeAppend(this.f38280q, sb);
        ParsedResult.maybeAppend(this.f38273j, sb);
        return sb.toString();
    }

    public String[] getEmailTypes() {
        return this.f38271h;
    }

    public String[] getEmails() {
        return this.f38270g;
    }

    public String[] getGeo() {
        return this.f38280q;
    }

    public String getInstantMessenger() {
        return this.f38272i;
    }

    public String[] getNames() {
        return this.f38265b;
    }

    public String[] getNicknames() {
        return this.f38266c;
    }

    public String getNote() {
        return this.f38273j;
    }

    public String getOrg() {
        return this.f38276m;
    }

    public String[] getPhoneNumbers() {
        return this.f38268e;
    }

    public String[] getPhoneTypes() {
        return this.f38269f;
    }

    public String getPronunciation() {
        return this.f38267d;
    }

    public String getTitle() {
        return this.f38278o;
    }

    public String[] getURLs() {
        return this.f38279p;
    }

    public AddressBookParsedResult(String[] strArr, String[] strArr2, String str, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String str2, String str3, String[] strArr7, String[] strArr8, String str4, String str5, String str6, String[] strArr9, String[] strArr10) {
        super(ParsedResultType.ADDRESSBOOK);
        this.f38265b = strArr;
        this.f38266c = strArr2;
        this.f38267d = str;
        this.f38268e = strArr3;
        this.f38269f = strArr4;
        this.f38270g = strArr5;
        this.f38271h = strArr6;
        this.f38272i = str2;
        this.f38273j = str3;
        this.f38274k = strArr7;
        this.f38275l = strArr8;
        this.f38276m = str4;
        this.f38277n = str5;
        this.f38278o = str6;
        this.f38279p = strArr9;
        this.f38280q = strArr10;
    }
}
