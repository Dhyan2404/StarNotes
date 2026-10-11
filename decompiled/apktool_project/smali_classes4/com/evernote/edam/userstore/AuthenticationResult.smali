.class public Lcom/evernote/edam/userstore/AuthenticationResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase<",
        "Lcom/evernote/edam/userstore/AuthenticationResult;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EXPIRATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTE_STORE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PUBLIC_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SECOND_FACTOR_DELIVERY_HINT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SECOND_FACTOR_REQUIRED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final USER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final WEB_API_URL_PREFIX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __CURRENTTIME_ISSET_ID:I = 0x0

.field private static final __EXPIRATION_ISSET_ID:I = 0x1

.field private static final __SECONDFACTORREQUIRED_ISSET_ID:I = 0x2


# instance fields
.field private __isset_vector:[Z

.field private authenticationToken:Ljava/lang/String;

.field private currentTime:J

.field private expiration:J

.field private noteStoreUrl:Ljava/lang/String;

.field private publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

.field private secondFactorDeliveryHint:Ljava/lang/String;

.field private secondFactorRequired:Z

.field private user:Lcom/evernote/edam/type/User;

.field private webApiUrlPrefix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "AuthenticationResult"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "currentTime"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "authenticationToken"

    const/16 v2, 0xb

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "expiration"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->EXPIRATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x4

    const-string v3, "user"

    const/16 v5, 0xc

    invoke-direct {v0, v3, v5, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->USER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "publicUserInfo"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v5, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->PUBLIC_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "noteStoreUrl"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->NOTE_STORE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "webApiUrlPrefix"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->WEB_API_URL_PREFIX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "secondFactorRequired"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->SECOND_FACTOR_REQUIRED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "secondFactorDeliveryHint"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->SECOND_FACTOR_DELIVERY_HINT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->setCurrentTimeIsSet(Z)V

    .line 6
    iput-object p3, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    .line 7
    iput-wide p4, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    .line 8
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->setExpirationIsSet(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/AuthenticationResult;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 10
    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    .line 11
    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-wide v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    iput-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    .line 15
    :cond_0
    iget-wide v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    iput-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lcom/evernote/edam/type/User;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/User;-><init>(Lcom/evernote/edam/type/User;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/PublicUserInfo;-><init>(Lcom/evernote/edam/userstore/PublicUserInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    .line 24
    :cond_4
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    iget-object p1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->setCurrentTimeIsSet(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->setExpirationIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    iput-object v3, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    iput-object v3, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    iput-object v3, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/AuthenticationResult;->setSecondFactorRequiredIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    iput-object v3, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/AuthenticationResult;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetCurrentTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetCurrentTime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetCurrentTime()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    iget-wide v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetExpiration()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetExpiration()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetExpiration()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    iget-wide v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    iget-object p1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_12

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->compareTo(Lcom/evernote/edam/userstore/AuthenticationResult;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/AuthenticationResult;-><init>(Lcom/evernote/edam/userstore/AuthenticationResult;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->deepCopy()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/userstore/AuthenticationResult;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-wide v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    iget-wide v3, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz v1, :cond_18

    if-nez v2, :cond_3

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 7
    :cond_4
    iget-wide v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    iget-wide v3, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    return v0

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    if-eqz v1, :cond_18

    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    iget-object v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/type/User;->equals(Lcom/evernote/edam/type/User;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v1

    .line 12
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v2

    if-nez v1, :cond_9

    if-eqz v2, :cond_b

    :cond_9
    if-eqz v1, :cond_18

    if-nez v2, :cond_a

    goto/16 :goto_0

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v1, v2}, Lcom/evernote/edam/userstore/PublicUserInfo;->equals(Lcom/evernote/edam/userstore/PublicUserInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 14
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v1

    .line 15
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_e

    :cond_c
    if-eqz v1, :cond_18

    if-nez v2, :cond_d

    goto :goto_0

    .line 16
    :cond_d
    iget-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    .line 17
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v1

    .line 18
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v2

    if-nez v1, :cond_f

    if-eqz v2, :cond_11

    :cond_f
    if-eqz v1, :cond_18

    if-nez v2, :cond_10

    goto :goto_0

    .line 19
    :cond_10
    iget-object v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 20
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v1

    .line 21
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_14

    :cond_12
    if-eqz v1, :cond_18

    if-nez v2, :cond_13

    goto :goto_0

    .line 22
    :cond_13
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    if-eq v1, v2, :cond_14

    return v0

    .line 23
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v1

    .line 24
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v2

    if-nez v1, :cond_15

    if-eqz v2, :cond_17

    :cond_15
    if-eqz v1, :cond_18

    if-nez v2, :cond_16

    goto :goto_0

    .line 25
    :cond_16
    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    iget-object p1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v0

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/evernote/edam/userstore/AuthenticationResult;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/userstore/AuthenticationResult;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->equals(Lcom/evernote/edam/userstore/AuthenticationResult;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getAuthenticationToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    return-wide v0
.end method

.method public getExpiration()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    return-wide v0
.end method

.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicUserInfo()Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    return-object p0
.end method

.method public getSecondFactorDeliveryHint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    return-object p0
.end method

.method public getUser()Lcom/evernote/edam/type/User;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    return-object p0
.end method

.method public getWebApiUrlPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSecondFactorRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    return p0
.end method

.method public isSetAuthenticationToken()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetCurrentTime()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetExpiration()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetNoteStoreUrl()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPublicUserInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSecondFactorDeliveryHint()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSecondFactorRequired()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetUser()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetWebApiUrlPrefix()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0xc

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/16 v5, 0xb

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v5, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    invoke-virtual {p0, v4}, Lcom/evernote/edam/userstore/AuthenticationResult;->setSecondFactorRequiredIsSet(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_3
    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_4
    if-ne v1, v2, :cond_5

    new-instance v0, Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v0}, Lcom/evernote/edam/userstore/PublicUserInfo;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/PublicUserInfo;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_5
    if-ne v1, v2, :cond_6

    new-instance v0, Lcom/evernote/edam/type/User;

    invoke-direct {v0}, Lcom/evernote/edam/type/User;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/User;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_6
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    invoke-virtual {p0, v4}, Lcom/evernote/edam/userstore/AuthenticationResult;->setExpirationIsSet(Z)V

    goto :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v5, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    invoke-virtual {p0, v4}, Lcom/evernote/edam/userstore/AuthenticationResult;->setCurrentTimeIsSet(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticationTokenIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->setCurrentTimeIsSet(Z)V

    return-void
.end method

.method public setCurrentTimeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setExpiration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->setExpirationIsSet(Z)V

    return-void
.end method

.method public setExpirationIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setNoteStoreUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    return-void
.end method

.method public setNoteStoreUrlIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPublicUserInfo(Lcom/evernote/edam/userstore/PublicUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    return-void
.end method

.method public setPublicUserInfoIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    :cond_0
    return-void
.end method

.method public setSecondFactorDeliveryHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    return-void
.end method

.method public setSecondFactorDeliveryHintIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSecondFactorRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/AuthenticationResult;->setSecondFactorRequiredIsSet(Z)V

    return-void
.end method

.method public setSecondFactorRequiredIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setUser(Lcom/evernote/edam/type/User;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    return-void
.end method

.method public setUserIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    :cond_0
    return-void
.end method

.method public setWebApiUrlPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    return-void
.end method

.method public setWebApiUrlPrefixIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthenticationResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "currentTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "authenticationToken:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    const-string v3, "null"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expiration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "publicUserInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    if-nez v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "noteStoreUrl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "webApiUrlPrefix:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    if-nez v2, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "secondFactorRequired:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "secondFactorDeliveryHint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    if-nez p0, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_5
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetAuthenticationToken()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    return-void
.end method

.method public unsetCurrentTime()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetExpiration()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetNoteStoreUrl()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    return-void
.end method

.method public unsetPublicUserInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    return-void
.end method

.method public unsetSecondFactorDeliveryHint()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    return-void
.end method

.method public unsetSecondFactorRequired()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetUser()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    return-void
.end method

.method public unsetWebApiUrlPrefix()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetCurrentTime()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetExpiration()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'expiration\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'authenticationToken\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'currentTime\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->validate()V

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->currentTime:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->AUTHENTICATION_TOKEN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->EXPIRATION_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->expiration:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetUser()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->USER_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->user:Lcom/evernote/edam/type/User;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/User;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetPublicUserInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->PUBLIC_USER_INFO_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->publicUserInfo:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/PublicUserInfo;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetNoteStoreUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->NOTE_STORE_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->noteStoreUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetWebApiUrlPrefix()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->WEB_API_URL_PREFIX_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->webApiUrlPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->SECOND_FACTOR_REQUIRED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorRequired:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    iget-object v0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->isSetSecondFactorDeliveryHint()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/userstore/AuthenticationResult;->SECOND_FACTOR_DELIVERY_HINT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object p0, p0, Lcom/evernote/edam/userstore/AuthenticationResult;->secondFactorDeliveryHint:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
