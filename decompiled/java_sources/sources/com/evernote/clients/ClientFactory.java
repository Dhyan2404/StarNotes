package com.evernote.clients;

import com.evernote.auth.EvernoteAuth;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.userstore.AuthenticationResult;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TBinaryProtocol;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.transport.THttpClient;
import com.evernote.thrift.transport.TTransportException;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class ClientFactory {

    /* renamed from: d */
    public static final String f21178d = "User-Agent";

    /* renamed from: e */
    public static final Pattern f21179e = Pattern.compile(":A=([^:]+):");

    /* renamed from: a */
    public EvernoteAuth f21180a;

    /* renamed from: b */
    public String f21181b;

    /* renamed from: c */
    public Map<String, String> f21182c;

    public ClientFactory(EvernoteAuth evernoteAuth) {
        if (evernoteAuth == null) {
            throw new IllegalArgumentException("token must not be null");
        }
        this.f21180a = evernoteAuth;
    }

    /* renamed from: a */
    public <T> T m17111a(Class<T> cls, String str, String str2) throws TTransportException {
        THttpClient tHttpClient = new THttpClient(str);
        tHttpClient.setCustomHeader("User-Agent", m17112b());
        Map<String, String> map = this.f21182c;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                tHttpClient.setCustomHeader(entry.getKey(), entry.getValue());
            }
        }
        TBinaryProtocol tBinaryProtocol = new TBinaryProtocol(tHttpClient);
        try {
            return cls.getDeclaredConstructor(TProtocol.class, TProtocol.class, String.class).newInstance(tBinaryProtocol, tBinaryProtocol, str2);
        } catch (Throwable th) {
            throw new RuntimeException("Couldn't create " + cls.getName() + " due to the error.", th);
        }
    }

    /* renamed from: b */
    public String m17112b() {
        String str = this.f21181b;
        if (str == null) {
            Matcher matcher = f21179e.matcher(this.f21180a.getToken());
            str = (!matcher.find() || matcher.groupCount() < 1 || matcher.group(1) == null) ? "" : matcher.group(1);
        }
        String implementationVersion = getClass().getPackage().getImplementationVersion();
        if (implementationVersion == null) {
            implementationVersion = "1.25";
        }
        return str + " / " + implementationVersion + "; Java / " + System.getProperty("java.version");
    }

    public BusinessNoteStoreClient createBusinessNoteStoreClient() throws TException, EDAMUserException, EDAMSystemException {
        NoteStoreClient createNoteStoreClient = createNoteStoreClient();
        AuthenticationResult authenticateToBusiness = createUserStoreClient().authenticateToBusiness();
        return new BusinessNoteStoreClient(createNoteStoreClient, (NoteStoreClient) m17111a(NoteStoreClient.class, authenticateToBusiness.getNoteStoreUrl(), authenticateToBusiness.getAuthenticationToken()), authenticateToBusiness);
    }

    public LinkedNoteStoreClient createLinkedNoteStoreClient(LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        NoteStoreClient createNoteStoreClient = createNoteStoreClient();
        AuthenticationResult authenticateToSharedNotebook = createNoteStoreClient.authenticateToSharedNotebook(linkedNotebook.getShareKey());
        return new LinkedNoteStoreClient(createNoteStoreClient, (NoteStoreClient) m17111a(NoteStoreClient.class, linkedNotebook.getNoteStoreUrl(), authenticateToSharedNotebook.getAuthenticationToken()), authenticateToSharedNotebook);
    }

    public NoteStoreClient createNoteStoreClient() throws EDAMUserException, EDAMSystemException, TException {
        String noteStoreUrl = this.f21180a.getNoteStoreUrl();
        if (noteStoreUrl == null) {
            noteStoreUrl = createUserStoreClient().getNoteStoreUrl();
            this.f21180a.setNoteStoreUrl(noteStoreUrl);
        }
        return (NoteStoreClient) m17111a(NoteStoreClient.class, noteStoreUrl, this.f21180a.getToken());
    }

    public UserStoreClient createUserStoreClient() throws TTransportException {
        return (UserStoreClient) m17111a(UserStoreClient.class, this.f21180a.getUserStoreUrl(), this.f21180a.getToken());
    }

    public void setCustomHeaders(Map<String, String> map) {
        this.f21182c = map;
    }

    public void setUserAgent(String str) {
        this.f21181b = str;
    }
}
