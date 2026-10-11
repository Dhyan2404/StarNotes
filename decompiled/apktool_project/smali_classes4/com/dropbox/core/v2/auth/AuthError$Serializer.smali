.class public Lcom/dropbox/core/v2/auth/AuthError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/auth/AuthError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/auth/AuthError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/auth/AuthError$Serializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/auth/AuthError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AuthError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/AuthError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AuthError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/AuthError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 6
    invoke-static {p1}, Lcom/dropbox/core/stone/CompositeSerializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_9

    const-string v2, "invalid_access_token"

    .line 7
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    sget-object p0, Lcom/dropbox/core/v2/auth/AuthError;->INVALID_ACCESS_TOKEN:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_1
    const-string v2, "invalid_select_user"

    .line 9
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    sget-object p0, Lcom/dropbox/core/v2/auth/AuthError;->INVALID_SELECT_USER:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_2
    const-string v2, "invalid_select_admin"

    .line 11
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    sget-object p0, Lcom/dropbox/core/v2/auth/AuthError;->INVALID_SELECT_ADMIN:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_3
    const-string v2, "user_suspended"

    .line 13
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    sget-object p0, Lcom/dropbox/core/v2/auth/AuthError;->USER_SUSPENDED:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_4
    const-string v2, "expired_access_token"

    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    sget-object p0, Lcom/dropbox/core/v2/auth/AuthError;->EXPIRED_ACCESS_TOKEN:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    :cond_5
    const-string v2, "missing_scope"

    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    sget-object p0, Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/auth/TokenScopeError;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/dropbox/core/v2/auth/AuthError;->missingScope(Lcom/dropbox/core/v2/auth/TokenScopeError;)Lcom/dropbox/core/v2/auth/AuthError;

    move-result-object p0

    goto :goto_1

    :cond_6
    const-string v1, "route_access_denied"

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 21
    sget-object p0, Lcom/dropbox/core/v2/auth/AuthError;->ROUTE_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AuthError;

    goto :goto_1

    .line 22
    :cond_7
    sget-object p0, Lcom/dropbox/core/v2/auth/AuthError;->OTHER:Lcom/dropbox/core/v2/auth/AuthError;

    :goto_1
    if-nez v0, :cond_8

    .line 23
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 24
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object p0

    .line 25
    :cond_9
    new-instance p0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field missing: .tag"

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/auth/AuthError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/AuthError;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lcom/dropbox/core/v2/auth/AuthError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/dropbox/core/v2/auth/AuthError$a;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/auth/AuthError;->tag()Lcom/dropbox/core/v2/auth/AuthError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p0, "other"

    .line 3
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p0, "route_access_denied"

    .line 4
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "missing_scope"

    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/stone/CompositeSerializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 7
    sget-object p0, Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AuthError;->a(Lcom/dropbox/core/v2/auth/AuthError;)Lcom/dropbox/core/v2/auth/TokenScopeError;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/core/v2/auth/TokenScopeError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/TokenScopeError;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_2
    const-string p0, "expired_access_token"

    .line 9
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p0, "user_suspended"

    .line 10
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p0, "invalid_select_admin"

    .line 11
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p0, "invalid_select_user"

    .line 12
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p0, "invalid_access_token"

    .line 13
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/dropbox/core/v2/auth/AuthError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/auth/AuthError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/AuthError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
