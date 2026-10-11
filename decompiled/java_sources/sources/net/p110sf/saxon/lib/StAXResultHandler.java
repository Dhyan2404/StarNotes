package net.p110sf.saxon.lib;

import java.util.Properties;
import javax.xml.transform.Result;
import net.p110sf.saxon.event.Receiver;

/* loaded from: classes11.dex */
public interface StAXResultHandler {
    Receiver getReceiver(Result result, Properties properties);
}
