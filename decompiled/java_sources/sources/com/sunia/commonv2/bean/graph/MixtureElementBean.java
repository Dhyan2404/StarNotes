package com.sunia.commonv2.bean.graph;

import com.google.gson.annotations.SerializedName;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sunia.commonv2.bean.graph.elements.base.ElementBeanBase;
import com.sunia.commonv2.bean.graph.elements.table.ChildrenTable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class MixtureElementBean extends ElementBeanBase {

    @SerializedName("children_table")
    private List<ChildrenTable> childrenTableLevel1List = new ArrayList();
    private String endDecoration;
    private String label;

    @SerializedName(BaiduYunConstant.OPERATION_MOVE)
    private MixtureMoveBean mixtureMoveBean;

    @SerializedName("parent_table")
    private int parentId;
    private String path;
    private String points;
    private String startDecoration;

    private MixtureElementBean() {
    }

    public List<ChildrenTable> getChildrenTableLevel1List() {
        return this.childrenTableLevel1List;
    }

    public String getEndDecoration() {
        return this.endDecoration;
    }

    public String getLabel() {
        return this.label;
    }

    public MixtureMoveBean getMixtureMoveBean() {
        return this.mixtureMoveBean;
    }

    public int getParentId() {
        return this.parentId;
    }

    public String getPath() {
        return this.path;
    }

    public String getPoints() {
        return this.points;
    }

    public String getStartDecoration() {
        return this.startDecoration;
    }
}
