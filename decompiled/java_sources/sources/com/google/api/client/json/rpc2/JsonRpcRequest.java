package com.google.api.client.json.rpc2;

import com.google.api.client.util.Beta;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Key;
import org.scribe.oauth.OAuth20ServiceImpl;

@Beta
/* loaded from: classes6.dex */
public class JsonRpcRequest extends GenericData {

    /* renamed from: id */
    @Key
    private Object f33495id;

    @Key
    private final String jsonrpc = OAuth20ServiceImpl.f115984c;

    @Key
    private String method;

    @Key
    private Object params;

    public Object getId() {
        return this.f33495id;
    }

    public String getMethod() {
        return this.method;
    }

    public Object getParameters() {
        return this.params;
    }

    public String getVersion() {
        return OAuth20ServiceImpl.f115984c;
    }

    public void setId(Object obj) {
        this.f33495id = obj;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setParameters(Object obj) {
        this.params = obj;
    }

    @Override // com.google.api.client.util.GenericData
    public JsonRpcRequest set(String str, Object obj) {
        return (JsonRpcRequest) super.set(str, obj);
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public JsonRpcRequest clone() {
        return (JsonRpcRequest) super.clone();
    }
}
