package org.mortbay.jetty.servlet;

import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import org.mortbay.log.Log;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes13.dex */
public class FilterHolder extends Holder {
    static /* synthetic */ Class class$javax$servlet$Filter;
    private transient C20412a _config;
    private transient Filter _filter;

    /* renamed from: org.mortbay.jetty.servlet.FilterHolder$a */
    /* loaded from: classes13.dex */
    public class C20412a implements FilterConfig {
        public C20412a() {
        }

        @Override // javax.servlet.FilterConfig
        public String getFilterName() {
            return FilterHolder.this._name;
        }

        @Override // javax.servlet.FilterConfig
        public String getInitParameter(String str) {
            return FilterHolder.this.getInitParameter(str);
        }

        @Override // javax.servlet.FilterConfig
        public Enumeration getInitParameterNames() {
            return FilterHolder.this.getInitParameterNames();
        }

        @Override // javax.servlet.FilterConfig
        public ServletContext getServletContext() {
            return FilterHolder.this._servletHandler.getServletContext();
        }
    }

    public FilterHolder() {
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static int dispatch(String str) {
        if (AbstractLogger.REQUEST.equalsIgnoreCase(str)) {
            return 1;
        }
        if ("forward".equalsIgnoreCase(str)) {
            return 2;
        }
        if ("include".equalsIgnoreCase(str)) {
            return 4;
        }
        if ("error".equalsIgnoreCase(str)) {
            return 8;
        }
        throw new IllegalArgumentException(str);
    }

    @Override // org.mortbay.jetty.servlet.Holder
    public void destroyInstance(Object obj) throws Exception {
        if (obj == null) {
            return;
        }
        Filter filter = (Filter) obj;
        filter.destroy();
        getServletHandler().customizeFilterDestroy(filter);
    }

    @Override // org.mortbay.jetty.servlet.Holder, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        super.doStart();
        Class cls = class$javax$servlet$Filter;
        if (cls == null) {
            cls = class$("javax.servlet.Filter");
            class$javax$servlet$Filter = cls;
        }
        if (!cls.isAssignableFrom(this._class)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this._class);
            stringBuffer.append(" is not a javax.servlet.Filter");
            String stringBuffer2 = stringBuffer.toString();
            super.stop();
            throw new IllegalStateException(stringBuffer2);
        }
        if (this._filter == null) {
            this._filter = (Filter) newInstance();
        }
        this._filter = getServletHandler().customizeFilter(this._filter);
        C20412a c20412a = new C20412a();
        this._config = c20412a;
        this._filter.init(c20412a);
    }

    @Override // org.mortbay.jetty.servlet.Holder, org.mortbay.component.AbstractLifeCycle
    public void doStop() {
        Filter filter = this._filter;
        if (filter != null) {
            try {
                destroyInstance(filter);
            } catch (Exception e) {
                Log.warn(e);
            }
        }
        if (!this._extInstance) {
            this._filter = null;
        }
        this._config = null;
        super.doStop();
    }

    public Filter getFilter() {
        return this._filter;
    }

    public synchronized void setFilter(Filter filter) {
        this._filter = filter;
        this._extInstance = true;
        setHeldClass(filter.getClass());
        if (getName() == null) {
            setName(filter.getClass().getName());
        }
    }

    @Override // org.mortbay.jetty.servlet.Holder
    public String toString() {
        return getName();
    }

    public FilterHolder(Class cls) {
        super(cls);
    }

    public FilterHolder(Filter filter) {
        setFilter(filter);
    }
}
