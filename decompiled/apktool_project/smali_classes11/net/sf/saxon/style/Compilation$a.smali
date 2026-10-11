.class public Lnet/sf/saxon/style/Compilation$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/style/Compilation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/om/GroundedValue;

.field public b:Lnet/sf/saxon/value/NestedIntegerValue;

.field public c:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/value/NestedIntegerValue;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation$a;->a:Lnet/sf/saxon/om/GroundedValue;

    iput-object p2, p0, Lnet/sf/saxon/style/Compilation$a;->b:Lnet/sf/saxon/value/NestedIntegerValue;

    iput-boolean p3, p0, Lnet/sf/saxon/style/Compilation$a;->c:Z

    return-void
.end method
