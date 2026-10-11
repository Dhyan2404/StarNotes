.class public Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->b:Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-nez v0, :cond_b

    move-object v0, p0

    move-object v1, v0

    move-object v2, v1

    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "action"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FedHandshakeAction$b;->b:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction$b;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FedHandshakeAction$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v4, "additional_info"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo$b;->b:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo$b;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v4, "previous_value"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;->b:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v4, "new_value"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;->b:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_a

    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    new-instance v3, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;)V

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->toStringMultiline()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/dropbox/core/stone/StoneDeserializerLogger;->log(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_7
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string p2, "Required field \"new_value\" missing."

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string p2, "Required field \"previous_value\" missing."

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string p2, "Required field \"additional_info\" missing."

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string p2, "Required field \"action\" missing."

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No subtype found that matches tag: \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string p0, "action"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FedHandshakeAction$b;->b:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction$b;

    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/FedHandshakeAction$b;->b(Lcom/dropbox/core/v2/teamlog/FedHandshakeAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string p0, "additional_info"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo$b;->b:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo$b;

    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->additionalInfo:Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo$b;->b(Lcom/dropbox/core/v2/teamlog/FederationStatusChangeAdditionalInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string p0, "previous_value"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;->b:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;

    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;->b(Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState$b;->b(Lcom/dropbox/core/v2/teamlog/TrustedTeamsRequestState;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_1
    return-void
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    check-cast p1, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails$a;->b(Lcom/dropbox/core/v2/teamlog/ChangedEnterpriseConnectedTeamStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
