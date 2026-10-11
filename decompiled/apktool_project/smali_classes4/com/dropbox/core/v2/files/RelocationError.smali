.class public final Lcom/dropbox/core/v2/files/RelocationError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationError$b;,
        Lcom/dropbox/core/v2/files/RelocationError$Tag;
    }
.end annotation


# static fields
.field public static final CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_MOVE_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final INTERNAL_ERROR:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;


# instance fields
.field public a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public b:Lcom/dropbox/core/v2/files/LookupError;

.field public c:Lcom/dropbox/core/v2/files/WriteError;

.field public d:Lcom/dropbox/core/v2/files/WriteError;

.field public e:Lcom/dropbox/core/v2/files/MoveIntoVaultError;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_MOVE_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->OTHER:Lcom/dropbox/core/v2/files/RelocationError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method public static cantMoveIntoVault(Lcom/dropbox/core/v2/files/MoveIntoVaultError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_INTO_VAULT:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->f(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/MoveIntoVaultError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/MoveIntoVaultError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->e:Lcom/dropbox/core/v2/files/MoveIntoVaultError;

    return-object p0
.end method

.method public static fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->g(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->h(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->i(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/RelocationError;

    if-eqz v2, :cond_b

    check-cast p1, Lcom/dropbox/core/v2/files/RelocationError;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationError$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->e:Lcom/dropbox/core/v2/files/MoveIntoVaultError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationError;->e:Lcom/dropbox/core/v2/files/MoveIntoVaultError;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    return v0

    :pswitch_5
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq p0, p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :cond_a
    :goto_3
    return v0

    :cond_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/MoveIntoVaultError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationError;->e:Lcom/dropbox/core/v2/files/MoveIntoVaultError;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method public getCantMoveIntoVaultValue()Lcom/dropbox/core/v2/files/MoveIntoVaultError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_INTO_VAULT:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->e:Lcom/dropbox/core/v2/files/MoveIntoVaultError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CANT_MOVE_INTO_VAULT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFromLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFromWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->e:Lcom/dropbox/core/v2/files/MoveIntoVaultError;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method public isCantCopySharedFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCantMoveFolderIntoItself()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCantMoveIntoVault()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_INTO_VAULT:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCantMoveSharedFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCantNestSharedFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCantTransferOwnership()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDuplicatedOrNestedPaths()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFromLookup()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFromWrite()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsufficientQuota()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInternalError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/RelocationError$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTo()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyFiles()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$b;->b:Lcom/dropbox/core/v2/files/RelocationError$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$b;->b:Lcom/dropbox/core/v2/files/RelocationError$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
