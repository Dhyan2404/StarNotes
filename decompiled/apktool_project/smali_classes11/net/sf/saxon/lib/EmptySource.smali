.class public Lnet/sf/saxon/lib/EmptySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final e:Lnet/sf/saxon/lib/EmptySource;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/EmptySource;

    invoke-direct {v0}, Lnet/sf/saxon/lib/EmptySource;-><init>()V

    sput-object v0, Lnet/sf/saxon/lib/EmptySource;->e:Lnet/sf/saxon/lib/EmptySource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/lib/EmptySource;
    .locals 1

    sget-object v0, Lnet/sf/saxon/lib/EmptySource;->e:Lnet/sf/saxon/lib/EmptySource;

    return-object v0
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
