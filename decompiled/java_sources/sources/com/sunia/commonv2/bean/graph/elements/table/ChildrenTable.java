package com.sunia.commonv2.bean.graph.elements.table;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class ChildrenTable {
    private boolean byMoveChanged;

    @SerializedName("children_table")
    private List<ChildrenTable> childrenTableList = new ArrayList();

    /* renamed from: id */
    private String f92508id;
    private TableMoveBean move;
    private String path;

    @SerializedName("root_table")
    private int rootTableId;

    @SerializedName("userPropertys")
    private Object userProperty;

    public List<ChildrenTable> getChildrenTableList() {
        return this.childrenTableList;
    }

    public String getId() {
        return this.f92508id;
    }

    public TableMoveBean getMove() {
        return this.move;
    }

    public String getPath() {
        return this.path;
    }

    public int getRootTableId() {
        return this.rootTableId;
    }

    public Object getUserProperty() {
        return this.userProperty;
    }

    public boolean isByMoveChanged() {
        return this.byMoveChanged;
    }
}
