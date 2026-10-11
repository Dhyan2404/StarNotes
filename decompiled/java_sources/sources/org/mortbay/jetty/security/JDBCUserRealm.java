package org.mortbay.jetty.security;

import com.couchbase.lite.internal.core.C4Replicator;
import java.io.IOException;
import java.security.Principal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import org.mortbay.jetty.Request;
import org.mortbay.log.Log;
import org.mortbay.util.Loader;

/* loaded from: classes13.dex */
public class JDBCUserRealm extends HashUserRealm implements UserRealm {

    /* renamed from: J */
    public Connection f115031J;

    /* renamed from: O */
    public String f115032O;

    /* renamed from: Q */
    public String f115033Q;

    /* renamed from: k */
    public String f115034k;

    /* renamed from: l */
    public String f115035l;

    /* renamed from: m */
    public String f115036m;

    /* renamed from: n */
    public String f115037n;

    /* renamed from: o */
    public String f115038o;

    /* renamed from: p */
    public String f115039p;

    /* renamed from: q */
    public String f115040q;

    /* renamed from: r */
    public String f115041r;

    /* renamed from: s */
    public String f115042s;

    /* renamed from: t */
    public String f115043t;

    /* renamed from: u */
    public String f115044u;

    /* renamed from: v */
    public String f115045v;

    /* renamed from: w */
    public String f115046w;

    /* renamed from: x */
    public String f115047x;

    /* renamed from: y */
    public int f115048y;

    /* renamed from: z */
    public long f115049z;

    public JDBCUserRealm() {
    }

    @Override // org.mortbay.jetty.security.HashUserRealm, org.mortbay.jetty.security.UserRealm
    public Principal authenticate(String str, Object obj, Request request) {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - this.f115049z;
            int i = this.f115048y;
            if (j > i || i == 0) {
                this._users.clear();
                this._roles.clear();
                this.f115049z = currentTimeMillis;
                m71589h();
            }
            if (super.getPrincipal(str) == null) {
                m71590i(str);
                super.getPrincipal(str);
            }
        }
        return super.authenticate(str, obj, request);
    }

    public void connectDatabase() {
        try {
            Class.forName(this.f115034k);
            this.f115031J = DriverManager.getConnection(this.f115035l, this.f115036m, this.f115037n);
        } catch (ClassNotFoundException e) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("UserRealm ");
            stringBuffer.append(getName());
            stringBuffer.append(" could not connect to database; will try later");
            Log.warn(stringBuffer.toString(), (Throwable) e);
        } catch (SQLException e2) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("UserRealm ");
            stringBuffer2.append(getName());
            stringBuffer2.append(" could not connect to database; will try later");
            Log.warn(stringBuffer2.toString(), (Throwable) e2);
        }
    }

    /* renamed from: h */
    public final void m71589h() {
        if (this.f115031J != null) {
            if (Log.isDebugEnabled()) {
                Log.debug("Closing db connection for JDBCUserRealm");
            }
            try {
                this.f115031J.close();
            } catch (Exception e) {
                Log.ignore(e);
            }
        }
        this.f115031J = null;
    }

    /* renamed from: i */
    public final void m71590i(String str) {
        try {
            if (this.f115031J == null) {
                connectDatabase();
            }
            Connection connection = this.f115031J;
            if (connection == null) {
                throw new SQLException("Can't connect to database");
            }
            PreparedStatement prepareStatement = connection.prepareStatement(this.f115032O);
            prepareStatement.setObject(1, str);
            ResultSet executeQuery = prepareStatement.executeQuery();
            if (executeQuery.next()) {
                int i = executeQuery.getInt(this.f115039p);
                put(str, executeQuery.getString(this.f115041r));
                prepareStatement.close();
                PreparedStatement prepareStatement2 = this.f115031J.prepareStatement(this.f115033Q);
                prepareStatement2.setInt(1, i);
                ResultSet executeQuery2 = prepareStatement2.executeQuery();
                while (executeQuery2.next()) {
                    addUserToRole(str, executeQuery2.getString(this.f115044u));
                }
                prepareStatement2.close();
            }
        } catch (SQLException e) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("UserRealm ");
            stringBuffer.append(getName());
            stringBuffer.append(" could not load user information from database");
            Log.warn(stringBuffer.toString(), (Throwable) e);
            m71589h();
        }
    }

    @Override // org.mortbay.jetty.security.HashUserRealm, org.mortbay.jetty.security.UserRealm
    public synchronized boolean isUserInRole(Principal principal, String str) {
        if (super.getPrincipal(principal.getName()) == null) {
            m71590i(principal.getName());
        }
        return super.isUserInRole(principal, str);
    }

    @Override // org.mortbay.jetty.security.HashUserRealm
    public void loadConfig() throws IOException {
        String str;
        String str2;
        Properties properties = new Properties();
        properties.load(getConfigResource().getInputStream());
        this.f115034k = properties.getProperty("jdbcdriver");
        this.f115035l = properties.getProperty("url");
        this.f115036m = properties.getProperty(C4Replicator.REPLICATOR_AUTH_USER_NAME);
        this.f115037n = properties.getProperty("password");
        this.f115038o = properties.getProperty("usertable");
        this.f115039p = properties.getProperty("usertablekey");
        this.f115040q = properties.getProperty("usertableuserfield");
        this.f115041r = properties.getProperty("usertablepasswordfield");
        this.f115042s = properties.getProperty("roletable");
        this.f115043t = properties.getProperty("roletablekey");
        this.f115044u = properties.getProperty("roletablerolefield");
        this.f115045v = properties.getProperty("userroletable");
        this.f115046w = properties.getProperty("userroletableuserkey");
        this.f115047x = properties.getProperty("userroletablerolekey");
        String property = properties.getProperty("cachetime");
        this.f115048y = property != null ? new Integer(property).intValue() : 30;
        String str3 = this.f115034k;
        if ((str3 == null || str3.equals("") || (str = this.f115035l) == null || str.equals("") || (str2 = this.f115036m) == null || str2.equals("") || this.f115037n == null || this.f115048y < 0) && Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("UserRealm ");
            stringBuffer.append(getName());
            stringBuffer.append(" has not been properly configured");
            Log.debug(stringBuffer.toString());
        }
        this.f115048y *= 1000;
        this.f115049z = 0L;
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("select ");
        stringBuffer2.append(this.f115039p);
        stringBuffer2.append(",");
        stringBuffer2.append(this.f115041r);
        stringBuffer2.append(" from ");
        stringBuffer2.append(this.f115038o);
        stringBuffer2.append(" where ");
        stringBuffer2.append(this.f115040q);
        stringBuffer2.append(" = ?");
        this.f115032O = stringBuffer2.toString();
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("select r.");
        stringBuffer3.append(this.f115044u);
        stringBuffer3.append(" from ");
        stringBuffer3.append(this.f115042s);
        stringBuffer3.append(" r, ");
        stringBuffer3.append(this.f115045v);
        stringBuffer3.append(" u where u.");
        stringBuffer3.append(this.f115046w);
        stringBuffer3.append(" = ?");
        stringBuffer3.append(" and r.");
        stringBuffer3.append(this.f115043t);
        stringBuffer3.append(" = u.");
        stringBuffer3.append(this.f115047x);
        this.f115033Q = stringBuffer3.toString();
    }

    @Override // org.mortbay.jetty.security.HashUserRealm, org.mortbay.jetty.security.UserRealm
    public void logout(Principal principal) {
    }

    public JDBCUserRealm(String str) {
        super(str);
    }

    public JDBCUserRealm(String str, String str2) throws IOException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        super(str);
        setConfig(str2);
        Loader.loadClass(getClass(), this.f115034k).newInstance();
    }
}
