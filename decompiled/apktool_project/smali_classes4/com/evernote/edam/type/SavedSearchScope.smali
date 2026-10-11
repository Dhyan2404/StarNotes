.class public Lcom/evernote/edam/type/SavedSearchScope;
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
        "Lcom/evernote/edam/type/SavedSearchScope;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final INCLUDE_ACCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_BUSINESS_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final INCLUDE_PERSONAL_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __INCLUDEACCOUNT_ISSET_ID:I = 0x0

.field private static final __INCLUDEBUSINESSLINKEDNOTEBOOKS_ISSET_ID:I = 0x2

.field private static final __INCLUDEPERSONALLINKEDNOTEBOOKS_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private includeAccount:Z

.field private includeBusinessLinkedNotebooks:Z

.field private includePersonalLinkedNotebooks:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SavedSearchScope"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearchScope;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "includeAccount"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_ACCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includePersonalLinkedNotebooks"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_PERSONAL_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeBusinessLinkedNotebooks"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_BUSINESS_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/SavedSearchScope;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-boolean v0, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    .line 7
    iget-boolean v0, p1, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    .line 8
    iget-boolean p1, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    iput-boolean p1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeAccountIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludePersonalLinkedNotebooksIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeBusinessLinkedNotebooksIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/SavedSearchScope;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    iget-boolean p1, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result p0

    if-eqz p0, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/SavedSearchScope;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearchScope;->compareTo(Lcom/evernote/edam/type/SavedSearchScope;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/SavedSearchScope;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/SavedSearchScope;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/SavedSearchScope;-><init>(Lcom/evernote/edam/type/SavedSearchScope;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->deepCopy()Lcom/evernote/edam/type/SavedSearchScope;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/SavedSearchScope;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_a

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_a

    if-nez v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    iget-boolean v1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    if-eq v1, v2, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_a

    if-nez v2, :cond_8

    goto :goto_0

    .line 11
    :cond_8
    iget-boolean p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    iget-boolean p1, p1, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    if-eq p0, p1, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_a
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
    instance-of v1, p1, Lcom/evernote/edam/type/SavedSearchScope;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/SavedSearchScope;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearchScope;->equals(Lcom/evernote/edam/type/SavedSearchScope;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncludeAccount()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    return p0
.end method

.method public isIncludeBusinessLinkedNotebooks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    return p0
.end method

.method public isIncludePersonalLinkedNotebooks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    return p0
.end method

.method public isSetIncludeAccount()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludeBusinessLinkedNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetIncludePersonalLinkedNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

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

    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeBusinessLinkedNotebooksIsSet(Z)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludePersonalLinkedNotebooksIsSet(Z)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeAccountIsSet(Z)V

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0
.end method

.method public setIncludeAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeAccountIsSet(Z)V

    return-void
.end method

.method public setIncludeAccountIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludeBusinessLinkedNotebooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludeBusinessLinkedNotebooksIsSet(Z)V

    return-void
.end method

.method public setIncludeBusinessLinkedNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setIncludePersonalLinkedNotebooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SavedSearchScope;->setIncludePersonalLinkedNotebooksIsSet(Z)V

    return-void
.end method

.method public setIncludePersonalLinkedNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedSearchScope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "includeAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "includePersonalLinkedNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "includeBusinessLinkedNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_4
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetIncludeAccount()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetIncludeBusinessLinkedNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetIncludePersonalLinkedNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->validate()V

    sget-object v0, Lcom/evernote/edam/type/SavedSearchScope;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_ACCOUNT_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeAccount:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludePersonalLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_PERSONAL_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includePersonalLinkedNotebooks:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SavedSearchScope;->isSetIncludeBusinessLinkedNotebooks()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/SavedSearchScope;->INCLUDE_BUSINESS_LINKED_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean p0, p0, Lcom/evernote/edam/type/SavedSearchScope;->includeBusinessLinkedNotebooks:Z

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
