package net.p110sf.saxon.om;

import java.util.Iterator;
import net.p110sf.saxon.Configuration;

/* loaded from: classes11.dex */
public interface TreeInfo {
    Configuration getConfiguration();

    long getDocumentNumber();

    NodeInfo getRootNode();

    SpaceStrippingRule getSpaceStrippingRule();

    String[] getUnparsedEntity(String str);

    Iterator<String> getUnparsedEntityNames();

    Object getUserData(String str);

    default boolean isMutable() {
        return false;
    }

    default boolean isTyped() {
        return false;
    }

    NodeInfo selectID(String str, boolean z);

    void setSpaceStrippingRule(SpaceStrippingRule spaceStrippingRule);

    void setUserData(String str, Object obj);
}
