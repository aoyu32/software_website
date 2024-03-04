package com.Object;

public class Soft {

    private Integer softId;
    private String softName;
    private String softCategory;
    private String softIntroduce;
    private Integer softDownload;
    private String softIcon;
    private String softAddress;
    private String softContents;

    public Soft() {
    }

    public Integer getSoftId() {
        return softId;
    }

    public void setSoftId(Integer softId) {
        this.softId = softId;
    }

    public String getSoftName() {
        return softName;
    }

    public void setSoftName(String softName) {
        this.softName = softName;
    }

    public String getSoftCategory() {
        return softCategory;
    }

    public void setSoftCategory(String softCategory) {
        this.softCategory = softCategory;
    }

    public String getSoftIntroduce() {
        return softIntroduce;
    }

    public void setSoftIntroduce(String softIntroduce) {
        this.softIntroduce = softIntroduce;
    }

    public Integer getSoftDownload() {
        return softDownload;
    }

    public void setSoftDownload(Integer softDownload) {
        this.softDownload = softDownload;
    }

    public String getSoftIcon() {
        return softIcon;
    }

    public void setSoftIcon(String softIcon) {
        this.softIcon = softIcon;
    }

    public String getSoftAddress() {
        return softAddress;
    }

    public void setSoftAddress(String softAddress) {
        this.softAddress = softAddress;
    }

    public String getSoftContents() {
        return softContents;
    }

    public void setSoftContents(String softContents) {
        this.softContents = softContents;
    }

    @Override
    public String toString() {
        return "Soft{" +
                "softId=" + softId +
                ", softName='" + softName + '\'' +
                ", softCategory='" + softCategory + '\'' +
                ", softIntroduce='" + softIntroduce + '\'' +
                ", softDownload=" + softDownload +
                ", softIcon='" + softIcon + '\'' +
                ", softAddress='" + softAddress + '\'' +
                ", softContents='" + softContents + '\'' +
                '}';
    }
}
