package net.p110sf.saxon.lib;

import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.om.AbsolutePath;
import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public interface Invalidity extends SourceLocator {
    String getConstraintClauseNumber();

    String getConstraintName();

    String getConstraintReference();

    AbsolutePath getContextPath();

    String getErrorCode();

    NodeInfo getInvalidNode();

    String getMessage();

    AbsolutePath getPath();

    int getSchemaPart();
}
