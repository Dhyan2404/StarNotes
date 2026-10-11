.class public Lcom/evernote/edam/notestore/RelatedResultSpec;
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
        "Lcom/evernote/edam/notestore/RelatedResultSpec;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final INCLUDE_CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final MAX_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final WRITABLE_NOTEBOOKS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __INCLUDECONTAININGNOTEBOOKS_ISSET_ID:I = 0x4

.field private static final __MAXNOTEBOOKS_ISSET_ID:I = 0x1

.field private static final __MAXNOTES_ISSET_ID:I = 0x0

.field private static final __MAXTAGS_ISSET_ID:I = 0x2

.field private static final __WRITABLENOTEBOOKSONLY_ISSET_ID:I = 0x3


# instance fields
.field private __isset_vector:[Z

.field private includeContainingNotebooks:Z

.field private maxNotebooks:I

.field private maxNotes:I

.field private maxTags:I

.field private writableNotebooksOnly:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "RelatedResultSpec"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "maxNotes"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxNotebooks"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "maxTags"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "writableNotebooksOnly"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->WRITABLE_NOTEBOOKS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "includeContainingNotebooks"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->INCLUDE_CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/RelatedResultSpec;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 4
    iput-object v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    .line 5
    iget-object v1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    .line 7
    iget v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    .line 8
    iget v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    .line 9
    iget-boolean v0, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    .line 10
    iget-boolean p1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotesIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotebooksIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxTagsIsSet(Z)V

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setWritableNotebooksOnlyIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setIncludeContainingNotebooksIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/RelatedResultSpec;)I
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
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    iget v1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    iget v1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    iget v1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    iget-boolean v1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    iget-boolean p1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result p0

    if-eqz p0, :cond_a

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->compareTo(Lcom/evernote/edam/notestore/RelatedResultSpec;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/RelatedResultSpec;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;-><init>(Lcom/evernote/edam/notestore/RelatedResultSpec;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->deepCopy()Lcom/evernote/edam/notestore/RelatedResultSpec;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/notestore/RelatedResultSpec;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_10

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    iget v2, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_10

    if-nez v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    iget v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    iget v2, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    if-eq v1, v2, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v2

    if-nez v1, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v1, :cond_10

    if-nez v2, :cond_8

    goto :goto_0

    .line 11
    :cond_8
    iget v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    iget v2, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    if-eq v1, v2, :cond_9

    return v0

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    if-eqz v1, :cond_10

    if-nez v2, :cond_b

    goto :goto_0

    .line 14
    :cond_b
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    iget-boolean v2, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    if-eq v1, v2, :cond_c

    return v0

    .line 15
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v2

    if-nez v1, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-eqz v1, :cond_10

    if-nez v2, :cond_e

    goto :goto_0

    .line 17
    :cond_e
    iget-boolean p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    iget-boolean p1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    if-eq p0, p1, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_10
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
    instance-of v1, p1, Lcom/evernote/edam/notestore/RelatedResultSpec;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/notestore/RelatedResultSpec;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->equals(Lcom/evernote/edam/notestore/RelatedResultSpec;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getMaxNotebooks()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    return p0
.end method

.method public getMaxNotes()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    return p0
.end method

.method public getMaxTags()I
    .locals 0

    iget p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncludeContainingNotebooks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    return p0
.end method

.method public isSetIncludeContainingNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetMaxNotebooks()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetMaxNotes()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetMaxTags()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetWritableNotebooksOnly()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isWritableNotebooksOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

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

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v5, 0x3

    if-eq v0, v5, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setIncludeContainingNotebooksIsSet(Z)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_3
    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setWritableNotebooksOnlyIsSet(Z)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxTagsIsSet(Z)V

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_7
    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotebooksIsSet(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :cond_9
    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    iput v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    invoke-virtual {p0, v3}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotesIsSet(Z)V

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0
.end method

.method public setIncludeContainingNotebooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setIncludeContainingNotebooksIsSet(Z)V

    return-void
.end method

.method public setIncludeContainingNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setMaxNotebooks(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotebooksIsSet(Z)V

    return-void
.end method

.method public setMaxNotebooksIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setMaxNotes(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxNotesIsSet(Z)V

    return-void
.end method

.method public setMaxNotesIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setMaxTags(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setMaxTagsIsSet(Z)V

    return-void
.end method

.method public setMaxTagsIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setWritableNotebooksOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/RelatedResultSpec;->setWritableNotebooksOnlyIsSet(Z)V

    return-void
.end method

.method public setWritableNotebooksOnlyIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RelatedResultSpec("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "maxNotes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "maxNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "maxTags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "writableNotebooksOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v2, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "includeContainingNotebooks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_8
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetIncludeContainingNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetMaxNotebooks()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetMaxNotes()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetMaxTags()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetWritableNotebooksOnly()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->__isset_vector:[Z

    const/4 v0, 0x3

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

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->validate()V

    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotes()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_NOTES_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotes:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxNotebooks()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxNotebooks:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetMaxTags()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->MAX_TAGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->maxTags:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetWritableNotebooksOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->WRITABLE_NOTEBOOKS_ONLY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->writableNotebooksOnly:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/RelatedResultSpec;->isSetIncludeContainingNotebooks()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/evernote/edam/notestore/RelatedResultSpec;->INCLUDE_CONTAINING_NOTEBOOKS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean p0, p0, Lcom/evernote/edam/notestore/RelatedResultSpec;->includeContainingNotebooks:Z

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_4
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
