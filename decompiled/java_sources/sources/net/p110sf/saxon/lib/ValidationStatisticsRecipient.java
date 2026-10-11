package net.p110sf.saxon.lib;

import java.util.Map;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.type.SchemaComponent;

/* loaded from: classes11.dex */
public interface ValidationStatisticsRecipient {
    void notifyValidationStatistics(Map<SchemaComponent, Integer> map) throws SaxonApiException;
}
