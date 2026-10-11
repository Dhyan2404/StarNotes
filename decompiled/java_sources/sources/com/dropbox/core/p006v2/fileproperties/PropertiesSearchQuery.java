package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.LogicalOperator;
import com.dropbox.core.p006v2.fileproperties.PropertiesSearchMode;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.actions.SearchIntents;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class PropertiesSearchQuery {
    protected final LogicalOperator logicalOperator;
    protected final PropertiesSearchMode mode;
    protected final String query;

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchQuery$a */
    /* loaded from: classes4.dex */
    public static class C2442a extends StructSerializer<PropertiesSearchQuery> {

        /* renamed from: b */
        public static final C2442a f16936b = new C2442a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertiesSearchQuery deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            LogicalOperator logicalOperator = LogicalOperator.OR_OPERATOR;
            PropertiesSearchMode propertiesSearchMode = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (SearchIntents.EXTRA_QUERY.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (Constants.ATTRNAME_MODE.equals(currentName)) {
                    propertiesSearchMode = PropertiesSearchMode.C2441b.f16935b.deserialize(jsonParser);
                } else if ("logical_operator".equals(currentName)) {
                    logicalOperator = LogicalOperator.C2430b.f16915b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"query\" missing.");
            }
            if (propertiesSearchMode == null) {
                throw new JsonParseException(jsonParser, "Required field \"mode\" missing.");
            }
            PropertiesSearchQuery propertiesSearchQuery = new PropertiesSearchQuery(str2, propertiesSearchMode, logicalOperator);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(propertiesSearchQuery, propertiesSearchQuery.toStringMultiline());
            return propertiesSearchQuery;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertiesSearchQuery propertiesSearchQuery, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(SearchIntents.EXTRA_QUERY);
            StoneSerializers.string().serialize((StoneSerializer<String>) propertiesSearchQuery.query, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_MODE);
            PropertiesSearchMode.C2441b.f16935b.serialize(propertiesSearchQuery.mode, jsonGenerator);
            jsonGenerator.writeFieldName("logical_operator");
            LogicalOperator.C2430b.f16915b.serialize(propertiesSearchQuery.logicalOperator, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PropertiesSearchQuery(String str, PropertiesSearchMode propertiesSearchMode, LogicalOperator logicalOperator) {
        if (str != null) {
            this.query = str;
            if (propertiesSearchMode != null) {
                this.mode = propertiesSearchMode;
                if (logicalOperator != null) {
                    this.logicalOperator = logicalOperator;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'logicalOperator' is null");
            }
            throw new IllegalArgumentException("Required value for 'mode' is null");
        }
        throw new IllegalArgumentException("Required value for 'query' is null");
    }

    public boolean equals(Object obj) {
        PropertiesSearchMode propertiesSearchMode;
        PropertiesSearchMode propertiesSearchMode2;
        LogicalOperator logicalOperator;
        LogicalOperator logicalOperator2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PropertiesSearchQuery propertiesSearchQuery = (PropertiesSearchQuery) obj;
        String str = this.query;
        String str2 = propertiesSearchQuery.query;
        return (str == str2 || str.equals(str2)) && ((propertiesSearchMode = this.mode) == (propertiesSearchMode2 = propertiesSearchQuery.mode) || propertiesSearchMode.equals(propertiesSearchMode2)) && ((logicalOperator = this.logicalOperator) == (logicalOperator2 = propertiesSearchQuery.logicalOperator) || logicalOperator.equals(logicalOperator2));
    }

    public LogicalOperator getLogicalOperator() {
        return this.logicalOperator;
    }

    public PropertiesSearchMode getMode() {
        return this.mode;
    }

    public String getQuery() {
        return this.query;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.query, this.mode, this.logicalOperator});
    }

    public String toString() {
        return C2442a.f16936b.serialize((C2442a) this, false);
    }

    public String toStringMultiline() {
        return C2442a.f16936b.serialize((C2442a) this, true);
    }

    public PropertiesSearchQuery(String str, PropertiesSearchMode propertiesSearchMode) {
        this(str, propertiesSearchMode, LogicalOperator.OR_OPERATOR);
    }
}
