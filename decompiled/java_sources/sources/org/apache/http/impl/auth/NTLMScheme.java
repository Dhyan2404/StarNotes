package org.apache.http.impl.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.auth.NTCredentials;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes12.dex */
public class NTLMScheme extends AuthSchemeBase {

    /* renamed from: e */
    public final NTLMEngine f110506e;

    /* renamed from: f */
    public State f110507f;

    /* renamed from: g */
    public String f110508g;

    /* loaded from: classes12.dex */
    public enum State {
        UNINITIATED,
        CHALLENGE_RECEIVED,
        MSG_TYPE1_GENERATED,
        MSG_TYPE2_RECEVIED,
        MSG_TYPE3_GENERATED,
        FAILED
    }

    public NTLMScheme(NTLMEngine nTLMEngine) {
        Args.notNull(nTLMEngine, "NTLM engine");
        this.f110506e = nTLMEngine;
        this.f110507f = State.UNINITIATED;
        this.f110508g = null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        String generateType3Msg;
        try {
            NTCredentials nTCredentials = (NTCredentials) credentials;
            State state = this.f110507f;
            if (state == State.FAILED) {
                throw new AuthenticationException("NTLM authentication failed");
            }
            if (state == State.CHALLENGE_RECEIVED) {
                generateType3Msg = this.f110506e.generateType1Msg(nTCredentials.getDomain(), nTCredentials.getWorkstation());
                this.f110507f = State.MSG_TYPE1_GENERATED;
            } else {
                if (state != State.MSG_TYPE2_RECEVIED) {
                    throw new AuthenticationException("Unexpected state: " + this.f110507f);
                }
                generateType3Msg = this.f110506e.generateType3Msg(nTCredentials.getUserName(), nTCredentials.getPassword(), nTCredentials.getDomain(), nTCredentials.getWorkstation(), this.f110508g);
                this.f110507f = State.MSG_TYPE3_GENERATED;
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
            if (isProxy()) {
                charArrayBuffer.append("Proxy-Authorization");
            } else {
                charArrayBuffer.append("Authorization");
            }
            charArrayBuffer.append(": NTLM ");
            charArrayBuffer.append(generateType3Msg);
            return new BufferedHeader(charArrayBuffer);
        } catch (ClassCastException unused) {
            throw new InvalidCredentialsException("Credentials cannot be used for NTLM authentication: " + credentials.getClass().getName());
        }
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getParameter(String str) {
        return null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getRealm() {
        return null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "ntlm";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        State state = this.f110507f;
        return state == State.MSG_TYPE3_GENERATED || state == State.FAILED;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return true;
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) throws MalformedChallengeException {
        String substringTrimmed = charArrayBuffer.substringTrimmed(i, i2);
        this.f110508g = substringTrimmed;
        if (substringTrimmed.isEmpty()) {
            if (this.f110507f == State.UNINITIATED) {
                this.f110507f = State.CHALLENGE_RECEIVED;
                return;
            } else {
                this.f110507f = State.FAILED;
                return;
            }
        }
        State state = this.f110507f;
        State state2 = State.MSG_TYPE1_GENERATED;
        if (state.compareTo(state2) < 0) {
            this.f110507f = State.FAILED;
            throw new MalformedChallengeException("Out of sequence NTLM response message");
        }
        if (this.f110507f == state2) {
            this.f110507f = State.MSG_TYPE2_RECEVIED;
        }
    }

    public NTLMScheme() {
        this(new NTLMEngineImpl());
    }
}
