.class public final Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$b;,
        Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;


# instance fields
.field public a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;->OTHER:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->b(Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;)Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->OTHER:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->b:Ljava/util/List;

    return-object p0
.end method

.method public static contactsNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_1

    const-string v2, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stringan item in list does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stringan item in list is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;->CONTACTS_NOT_FOUND:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->c(Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;)Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;"
        }
    .end annotation

    new-instance p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->b:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;

    iget-object v2, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_4

    const/4 p0, 0x2

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->b:Ljava/util/List;

    if-eq p0, p1, :cond_6

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getContactsNotFoundValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;->CONTACTS_NOT_FOUND:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->b:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CONTACTS_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    iget-object p0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->b:Ljava/util/List;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isContactsNotFound()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;->CONTACTS_NOT_FOUND:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOther()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;->OTHER:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError;->a:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$b;->b:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$b;->b:Lcom/dropbox/core/v2/contacts/DeleteManualContactsError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
