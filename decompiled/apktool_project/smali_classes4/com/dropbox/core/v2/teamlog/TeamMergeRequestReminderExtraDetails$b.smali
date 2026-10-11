.class public Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$b;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$b;->b:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    const-string v2, "primary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;->primaryTeam(Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v2, "secondary_team"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails$a;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;->secondaryTeam(Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;->OTHER:Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;

    :goto_1
    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field missing: .tag"

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$a;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;->tag()Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "other"

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;)Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails$a;->b(Lcom/dropbox/core/v2/teamlog/SecondaryTeamRequestReminderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "primary_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    sget-object p0, Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails$a;->b:Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;->a(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;)Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails$a;->b(Lcom/dropbox/core/v2/teamlog/PrimaryTeamRequestReminderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails$b;->b(Lcom/dropbox/core/v2/teamlog/TeamMergeRequestReminderExtraDetails;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
