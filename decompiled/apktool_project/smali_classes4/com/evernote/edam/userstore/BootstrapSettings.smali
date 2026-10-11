.class public Lcom/evernote/edam/userstore/BootstrapSettings;
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
        "Lcom/evernote/edam/userstore/BootstrapSettings;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_EMAIL_DOMAIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_FACEBOOK_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_GIFT_SUBSCRIPTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_LINKED_IN_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_PUBLIC_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_SINGLE_NOTE_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_SPONSORED_ACCOUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_SUPPORT_TICKETS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ENABLE_TWITTER_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MARKETING_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SERVICE_HOST_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final SUPPORT_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ENABLEFACEBOOKSHARING_ISSET_ID:I = 0x0

.field private static final __ENABLEGIFTSUBSCRIPTIONS_ISSET_ID:I = 0x1

.field private static final __ENABLELINKEDINSHARING_ISSET_ID:I = 0x7

.field private static final __ENABLEPUBLICNOTEBOOKS_ISSET_ID:I = 0x8

.field private static final __ENABLESHAREDNOTEBOOKS_ISSET_ID:I = 0x3

.field private static final __ENABLESINGLENOTESHARING_ISSET_ID:I = 0x4

.field private static final __ENABLESPONSOREDACCOUNTS_ISSET_ID:I = 0x5

.field private static final __ENABLESUPPORTTICKETS_ISSET_ID:I = 0x2

.field private static final __ENABLETWITTERSHARING_ISSET_ID:I = 0x6


# instance fields
.field private __isset_vector:[Z

.field private accountEmailDomain:Ljava/lang/String;

.field private enableFacebookSharing:Z

.field private enableGiftSubscriptions:Z

.field private enableLinkedInSharing:Z

.field private enablePublicNotebooks:Z

.field private enableSharedNotebooks:Z

.field private enableSingleNoteSharing:Z

.field private enableSponsoredAccounts:Z

.field private enableSupportTickets:Z

.field private enableTwitterSharing:Z

.field private marketingUrl:Ljava/lang/String;

.field private serviceHost:Ljava/lang/String;

.field private supportUrl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "BootstrapSettings"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "serviceHost"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->SERVICE_HOST_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "marketingUrl"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->MARKETING_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "supportUrl"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->SUPPORT_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "accountEmailDomain"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ACCOUNT_EMAIL_DOMAIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enableFacebookSharing"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_FACEBOOK_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enableGiftSubscriptions"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_GIFT_SUBSCRIPTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enableSupportTickets"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_SUPPORT_TICKETS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enableSharedNotebooks"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enableSingleNoteSharing"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_SINGLE_NOTE_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enableSponsoredAccounts"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_SPONSORED_ACCOUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enableTwitterSharing"

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_TWITTER_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enableLinkedInSharing"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_LINKED_IN_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "enablePublicNotebooks"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_PUBLIC_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/BootstrapSettings;)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 9
    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    .line 10
    iget-object v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetServiceHost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetMarketingUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetSupportUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetAccountEmailDomain()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    .line 19
    :cond_3
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    .line 20
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    .line 21
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    .line 22
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    .line 23
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    .line 24
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    .line 25
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    .line 26
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    .line 27
    iget-boolean p1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableFacebookSharingIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableGiftSubscriptionsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSupportTicketsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSharedNotebooksIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSingleNoteSharingIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSponsoredAccountsIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableTwitterSharingIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableLinkedInSharingIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnablePublicNotebooksIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/BootstrapSettings;)I
    .locals 2

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
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetServiceHost()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetServiceHost()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetServiceHost()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetMarketingUrl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetMarketingUrl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetMarketingUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetSupportUrl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetSupportUrl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetSupportUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetAccountEmailDomain()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetAccountEmailDomain()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetAccountEmailDomain()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableFacebookSharing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableFacebookSharing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableFacebookSharing()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableGiftSubscriptions()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableGiftSubscriptions()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableGiftSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSupportTickets()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSupportTickets()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSupportTickets()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSharedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSharedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSharedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSingleNoteSharing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSingleNoteSharing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSingleNoteSharing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSponsoredAccounts()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSponsoredAccounts()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSponsoredAccounts()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableTwitterSharing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableTwitterSharing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableTwitterSharing()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 26
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableLinkedInSharing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableLinkedInSharing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 27
    :cond_17
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableLinkedInSharing()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    iget-boolean v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_18

    return v0

    .line 28
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnablePublicNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnablePublicNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_19

    return v0

    .line 29
    :cond_19
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnablePublicNotebooks()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    iget-boolean p1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result p0

    if-eqz p0, :cond_1a

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->compareTo(Lcom/evernote/edam/userstore/BootstrapSettings;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/BootstrapSettings;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/BootstrapSettings;-><init>(Lcom/evernote/edam/userstore/BootstrapSettings;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->deepCopy()Lcom/evernote/edam/userstore/BootstrapSettings;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/userstore/BootstrapSettings;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetServiceHost()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetServiceHost()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_28

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetMarketingUrl()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetMarketingUrl()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_28

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetSupportUrl()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetSupportUrl()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_28

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetAccountEmailDomain()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetAccountEmailDomain()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_28

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableFacebookSharing()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableFacebookSharing()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_28

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 17
    :cond_e
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    if-eq v1, v2, :cond_f

    return v0

    .line 18
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableGiftSubscriptions()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableGiftSubscriptions()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-eqz v1, :cond_28

    if-nez v2, :cond_11

    goto/16 :goto_0

    .line 20
    :cond_11
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    if-eq v1, v2, :cond_12

    return v0

    .line 21
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSupportTickets()Z

    move-result v1

    .line 22
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSupportTickets()Z

    move-result v2

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v1, :cond_28

    if-nez v2, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    if-eq v1, v2, :cond_15

    return v0

    .line 24
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSharedNotebooks()Z

    move-result v1

    .line 25
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSharedNotebooks()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_18

    :cond_16
    if-eqz v1, :cond_28

    if-nez v2, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    if-eq v1, v2, :cond_18

    return v0

    .line 27
    :cond_18
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSingleNoteSharing()Z

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSingleNoteSharing()Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_1b

    :cond_19
    if-eqz v1, :cond_28

    if-nez v2, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    if-eq v1, v2, :cond_1b

    return v0

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSponsoredAccounts()Z

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSponsoredAccounts()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1e

    :cond_1c
    if-eqz v1, :cond_28

    if-nez v2, :cond_1d

    goto :goto_0

    .line 32
    :cond_1d
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    if-eq v1, v2, :cond_1e

    return v0

    .line 33
    :cond_1e
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableTwitterSharing()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableTwitterSharing()Z

    move-result v2

    if-nez v1, :cond_1f

    if-eqz v2, :cond_21

    :cond_1f
    if-eqz v1, :cond_28

    if-nez v2, :cond_20

    goto :goto_0

    .line 35
    :cond_20
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    if-eq v1, v2, :cond_21

    return v0

    .line 36
    :cond_21
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableLinkedInSharing()Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableLinkedInSharing()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    if-eqz v1, :cond_28

    if-nez v2, :cond_23

    goto :goto_0

    .line 38
    :cond_23
    iget-boolean v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    iget-boolean v2, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    if-eq v1, v2, :cond_24

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnablePublicNotebooks()Z

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnablePublicNotebooks()Z

    move-result v2

    if-nez v1, :cond_25

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v1, :cond_28

    if-nez v2, :cond_26

    goto :goto_0

    .line 41
    :cond_26
    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    iget-boolean p1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    if-eq p0, p1, :cond_27

    return v0

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_28
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
    instance-of v1, p1, Lcom/evernote/edam/userstore/BootstrapSettings;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/userstore/BootstrapSettings;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->equals(Lcom/evernote/edam/userstore/BootstrapSettings;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getAccountEmailDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getMarketingUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnableFacebookSharing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    return p0
.end method

.method public isEnableGiftSubscriptions()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    return p0
.end method

.method public isEnableLinkedInSharing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    return p0
.end method

.method public isEnablePublicNotebooks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    return p0
.end method

.method public isEnableSharedNotebooks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    return p0
.end method

.method public isEnableSingleNoteSharing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    return p0
.end method

.method public isEnableSponsoredAccounts()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    return p0
.end method

.method public isEnableSupportTickets()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    return p0
.end method

.method public isEnableTwitterSharing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    return p0
.end method

.method public isSetAccountEmailDomain()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetEnableFacebookSharing()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEnableGiftSubscriptions()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEnableLinkedInSharing()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x7

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEnablePublicNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/16 v0, 0x8

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEnableSharedNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEnableSingleNoteSharing()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEnableSponsoredAccounts()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEnableSupportTickets()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetEnableTwitterSharing()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetMarketingUrl()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetServiceHost()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSupportUrl()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
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

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnablePublicNotebooksIsSet(Z)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableLinkedInSharingIsSet(Z)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableTwitterSharingIsSet(Z)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSponsoredAccountsIsSet(Z)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSingleNoteSharingIsSet(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_5
    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSharedNotebooksIsSet(Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_6
    if-ne v1, v4, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSupportTicketsIsSet(Z)V

    goto :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v4, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableGiftSubscriptionsIsSet(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableFacebookSharingIsSet(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_9
    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_a
    if-ne v1, v2, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_b
    if-ne v1, v2, :cond_c

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    goto :goto_1

    :cond_c
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_c
    if-ne v1, v2, :cond_d

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    goto :goto_1

    :cond_d
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public setAccountEmailDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    return-void
.end method

.method public setAccountEmailDomainIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setEnableFacebookSharing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableFacebookSharingIsSet(Z)V

    return-void
.end method

.method public setEnableFacebookSharingIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEnableGiftSubscriptions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableGiftSubscriptionsIsSet(Z)V

    return-void
.end method

.method public setEnableGiftSubscriptionsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEnableLinkedInSharing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableLinkedInSharingIsSet(Z)V

    return-void
.end method

.method public setEnableLinkedInSharingIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x7

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEnablePublicNotebooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnablePublicNotebooksIsSet(Z)V

    return-void
.end method

.method public setEnablePublicNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/16 v0, 0x8

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEnableSharedNotebooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSharedNotebooksIsSet(Z)V

    return-void
.end method

.method public setEnableSharedNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEnableSingleNoteSharing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSingleNoteSharingIsSet(Z)V

    return-void
.end method

.method public setEnableSingleNoteSharingIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEnableSponsoredAccounts(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSponsoredAccountsIsSet(Z)V

    return-void
.end method

.method public setEnableSponsoredAccountsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEnableSupportTickets(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableSupportTicketsIsSet(Z)V

    return-void
.end method

.method public setEnableSupportTicketsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setEnableTwitterSharing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/BootstrapSettings;->setEnableTwitterSharingIsSet(Z)V

    return-void
.end method

.method public setEnableTwitterSharingIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setMarketingUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    return-void
.end method

.method public setMarketingUrlIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setServiceHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    return-void
.end method

.method public setServiceHostIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSupportUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    return-void
.end method

.method public setSupportUrlIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootstrapSettings("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "serviceHost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "marketingUrl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "supportUrl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "accountEmailDomain:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableFacebookSharing()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enableFacebookSharing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableGiftSubscriptions()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enableGiftSubscriptions:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSupportTickets()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enableSupportTickets:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSharedNotebooks()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enableSharedNotebooks:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSingleNoteSharing()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enableSingleNoteSharing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSponsoredAccounts()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enableSponsoredAccounts:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableTwitterSharing()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enableTwitterSharing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableLinkedInSharing()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enableLinkedInSharing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnablePublicNotebooks()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enablePublicNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_c
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetAccountEmailDomain()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    return-void
.end method

.method public unsetEnableFacebookSharing()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetEnableGiftSubscriptions()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEnableLinkedInSharing()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEnablePublicNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEnableSharedNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEnableSingleNoteSharing()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEnableSponsoredAccounts()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEnableSupportTickets()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetEnableTwitterSharing()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetMarketingUrl()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    return-void
.end method

.method public unsetServiceHost()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    return-void
.end method

.method public unsetSupportUrl()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetServiceHost()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetMarketingUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetSupportUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetAccountEmailDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'accountEmailDomain\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->toString()Ljava/lang/String;

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

    const-string v2, "Required field \'supportUrl\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->toString()Ljava/lang/String;

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

    const-string v2, "Required field \'marketingUrl\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'serviceHost\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->validate()V

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->SERVICE_HOST_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->serviceHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->MARKETING_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->marketingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->SUPPORT_URL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->supportUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ACCOUNT_EMAIL_DOMAIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->accountEmailDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableFacebookSharing()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_FACEBOOK_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableFacebookSharing:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableGiftSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_GIFT_SUBSCRIPTIONS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableGiftSubscriptions:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSupportTickets()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_SUPPORT_TICKETS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSupportTickets:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSharedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_SHARED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSharedNotebooks:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSingleNoteSharing()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_SINGLE_NOTE_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSingleNoteSharing:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableSponsoredAccounts()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_SPONSORED_ACCOUNTS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableSponsoredAccounts:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableTwitterSharing()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_TWITTER_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableTwitterSharing:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnableLinkedInSharing()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_LINKED_IN_SHARING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enableLinkedInSharing:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->isSetEnablePublicNotebooks()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/evernote/edam/userstore/BootstrapSettings;->ENABLE_PUBLIC_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean p0, p0, Lcom/evernote/edam/userstore/BootstrapSettings;->enablePublicNotebooks:Z

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_c
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
