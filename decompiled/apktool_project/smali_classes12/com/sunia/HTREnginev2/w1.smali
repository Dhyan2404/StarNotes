.class public Lcom/sunia/HTREnginev2/w1;
.super Lcom/sunia/HTREnginev2/swd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/swd;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/InputStream;JLcom/sunia/HTREnginev2/rwd;[BI)Ljava/io/InputStream;
    .locals 6

    new-instance p3, Lcom/sunia/HTREnginev2/w1$a;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/w1$a;-><init>(Lcom/sunia/HTREnginev2/w1;Lcom/sunia/HTREnginev2/rwd;Ljava/lang/String;[BLjava/io/InputStream;)V

    return-object p3
.end method
