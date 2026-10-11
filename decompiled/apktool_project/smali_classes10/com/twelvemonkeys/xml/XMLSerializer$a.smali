.class public Lcom/twelvemonkeys/xml/XMLSerializer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/xml/XMLSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\t"

    iput-object v0, p0, Lcom/twelvemonkeys/xml/XMLSerializer$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/xml/XMLSerializer$a;->f:I

    iput-boolean v0, p0, Lcom/twelvemonkeys/xml/XMLSerializer$a;->g:Z

    iput-boolean v0, p0, Lcom/twelvemonkeys/xml/XMLSerializer$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/twelvemonkeys/xml/XMLSerializer$a;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/xml/XMLSerializer$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Lcom/twelvemonkeys/xml/XMLSerializer$a;
    .locals 1

    invoke-virtual {p0}, Lcom/twelvemonkeys/xml/XMLSerializer$a;->a()Lcom/twelvemonkeys/xml/XMLSerializer$a;

    move-result-object p0

    iget v0, p0, Lcom/twelvemonkeys/xml/XMLSerializer$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twelvemonkeys/xml/XMLSerializer$a;->f:I

    return-object p0
.end method
