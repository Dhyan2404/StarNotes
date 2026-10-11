.class public Lorg/xmlresolver/CatalogManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xmlresolver/CatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/xmlresolver/CatalogManager$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/xmlresolver/CatalogManager$b;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/xmlresolver/CatalogManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/xmlresolver/CatalogManager$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager$b;->b:Ljava/lang/String;

    return-object p0
.end method
