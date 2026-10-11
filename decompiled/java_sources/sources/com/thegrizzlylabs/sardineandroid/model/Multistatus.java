package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Multistatus {

    @ElementList(inline = true, required = false)
    protected List<Response> response;

    @Element(required = false)
    protected String responsedescription;
    protected String syncToken;

    public List<Response> getResponse() {
        if (this.response == null) {
            this.response = new ArrayList();
        }
        return this.response;
    }

    public String getResponsedescription() {
        return this.responsedescription;
    }

    public String getSyncToken() {
        return this.syncToken;
    }

    public void setResponsedescription(String str) {
        this.responsedescription = str;
    }

    public void setSyncToken(String str) {
        this.syncToken = str;
    }
}
