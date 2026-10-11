.class public Lcom/onegravity/rteditor/fonts/RTTypefaceSet;
.super Ljava/util/TreeSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Lcom/onegravity/rteditor/fonts/RTTypeface;",
        ">;"
    }
.end annotation


# instance fields
.field private tmp:Lcom/onegravity/rteditor/fonts/RTTypeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    new-instance v0, Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-direct {v0}, Lcom/onegravity/rteditor/fonts/RTTypeface;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/fonts/RTTypefaceSet;->tmp:Lcom/onegravity/rteditor/fonts/RTTypeface;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/fonts/RTTypefaceSet;->tmp:Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-virtual {v0, p1}, Lcom/onegravity/rteditor/fonts/RTTypeface;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onegravity/rteditor/fonts/RTTypefaceSet;->tmp:Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/fonts/RTTypefaceSet;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
