package org.scribe.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class ParameterList {

    /* renamed from: b */
    public static final char f115950b = '?';

    /* renamed from: c */
    public static final String f115951c = "&";

    /* renamed from: d */
    public static final String f115952d = "=";

    /* renamed from: e */
    public static final String f115953e = "";

    /* renamed from: a */
    public final List<Parameter> f115954a;

    public ParameterList() {
        this.f115954a = new ArrayList();
    }

    public void add(String str, String str2) {
        this.f115954a.add(new Parameter(str, str2));
    }

    public void addAll(ParameterList parameterList) {
        this.f115954a.addAll(parameterList.f115954a);
    }

    public void addQuerystring(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        for (String str2 : str.split(f115951c)) {
            String[] split = str2.split("=");
            this.f115954a.add(new Parameter(OAuthEncoder.decode(split[0]), split.length > 1 ? OAuthEncoder.decode(split[1]) : ""));
        }
    }

    public String appendTo(String str) {
        Preconditions.checkNotNull(str, "Cannot append to null URL");
        String asFormUrlEncodedString = asFormUrlEncodedString();
        if (asFormUrlEncodedString.equals("")) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str.indexOf(63) != -1 ? f115951c : '?');
        return sb.toString() + asFormUrlEncodedString;
    }

    public String asFormUrlEncodedString() {
        if (this.f115954a.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Parameter parameter : this.f115954a) {
            sb.append('&');
            sb.append(parameter.asUrlEncodedPair());
        }
        return sb.toString().substring(1);
    }

    public String asOauthBaseString() {
        return OAuthEncoder.encode(asFormUrlEncodedString());
    }

    public boolean contains(Parameter parameter) {
        return this.f115954a.contains(parameter);
    }

    public int size() {
        return this.f115954a.size();
    }

    public ParameterList sort() {
        ParameterList parameterList = new ParameterList(this.f115954a);
        Collections.sort(parameterList.f115954a);
        return parameterList;
    }

    public ParameterList(List<Parameter> list) {
        this.f115954a = new ArrayList(list);
    }

    public ParameterList(Map<String, String> map) {
        this();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f115954a.add(new Parameter(entry.getKey(), entry.getValue()));
        }
    }
}
